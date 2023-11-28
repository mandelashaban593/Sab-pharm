<?php
session_start();
require '../conn2.php';
require '../vendor/autoload.php'; // Load PhpSpreadsheet library

//use ZipArchive;

use PhpOffice\PhpSpreadsheet\IOFactory;


// Ensure you have a valid PDO connection established

$response = ["success" => false, "error" => "An error occurred while uploading the data."];

try {

    // Check if a file was uploaded
    if (isset($_FILES['excelFile']) && $_FILES['excelFile']['error'] == UPLOAD_ERR_OK) {
        $file = $_FILES['excelFile']['tmp_name'];
        $status = "Active";
        $sell_type = '';
        $category = '';
        $inventory= '';


        $objPHPExcel = IOFactory::load($file);
        $worksheet = $objPHPExcel->getActiveSheet();
        $highestRow = $worksheet->getHighestRow();

        try {
            // Update all products to "Obsolete"
            $sql = "UPDATE products SET status = 'Obsolete' and quantity=0";
            $db->exec($sql);

            echo "All products updated to 'Obsolete' successfully.";
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }


        $db->beginTransaction(); // Begin a transaction to ensure data consistency

        for ($row = 2; $row <= $highestRow; $row++) { // Start from 2 to skip the header row
            $med_name = $worksheet->getCellByColumnAndRow(1, $row)->getValue();
            $reg_date = $worksheet->getCellByColumnAndRow(2, $row)->getValue();
            $reg_date = \PhpOffice\PhpSpreadsheet\Shared\Date::excelToTimestamp((float)$reg_date);
            $reg_date = \DateTime::createFromFormat('U', $reg_date);
            $reg_date= $reg_date->format('Y-m-d');
            $batch_no = $worksheet->getCellByColumnAndRow(3, $row)->getValue();
            $expiry_date = $worksheet->getCellByColumnAndRow(4, $row)->getValue();
            $expiry_date= \PhpOffice\PhpSpreadsheet\Shared\Date::excelToTimestamp((float)$expiry_date);
            $expiry_date = \DateTime::createFromFormat('U', $expiry_date);
            $expiry_date= $expiry_date->format('Y-m-d');

            $price = $worksheet->getCellByColumnAndRow(5, $row)->getValue();
            $qty = $worksheet->getCellByColumnAndRow(6, $row)->getValue();
            $stockval = $qty*$price;
            
            // Prepare the SQL statement
            $stat = "Obsolete"; //Status value for retrieving all particular Obsolete product
            $stmt = $db->prepare("SELECT * FROM products WHERE med_name = :med_name  AND status = :status LIMIT 1");
            // Bind the parameter
            $stmt->bindParam(':med_name', $med_name, PDO::PARAM_STR);
            $stmt->bindParam(':status',$stat, PDO::PARAM_STR);
            // Execute the query
            $stmt->execute();
            // Fetch all rows as an associative array
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            // Iterate over the result set and echo the category
            foreach($result as $res) {
                $cat = $res['category'];
                $invent= $res['inventory'];
                $selltype = $res['sell_type'];
                echo "Category: $cat<br>";
            }


          $stmt = $db->prepare("INSERT INTO products (med_name, reg_date, batch_no,category, inventory, sell_type, expiry_date, price,status,stockval, quantity) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            $stmt->execute([$med_name, $reg_date, $batch_no, $cat, $invent,$selltype, $expiry_date, $price, $status, $stockval, $qty]);

        }

        $db->commit(); // Commit the transaction

        $response["success"] = true;
        $response["error"] = null;
    }
} catch (Exception $e) {
    $db->rollBack(); // Roll back the transaction in case of an error
    $response["error"] = "Error: " . $e->getMessage();
}

header("Content-Type: application/json");
echo json_encode($response);
?>
