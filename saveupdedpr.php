<?php
session_start();
require 'conn2.php';
require '../vendor/autoload.php'; // Load PhpSpreadsheet library

//use ZipArchive;

use PhpOffice\PhpSpreadsheet\IOFactory;


// Ensure you have a valid PDO connection established

$response = ["success" => false, "error" => "An error occurred while uploading the data."];


    // Check if a file was uploaded

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
            $sql = "UPDATE products SET status = 'Obsolete'";
            $db->exec($sql);

            echo "All products updated to 'Obsolete' successfully.";
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }


        $db->beginTransaction(); // Begin a transaction to ensure data consistency

        for ($row = 2; $row <= $highestRow; $row++) { // Start from 2 to skip the header row
            $med_name = $worksheet->getCellByColumnAndRow(1, $row)->getValue();
            $reg_date = $worksheet->getCellByColumnAndRow(2, $row)->getValue();
            $batch_no = $worksheet->getCellByColumnAndRow(3, $row)->getValue();
            $expiry_date = $worksheet->getCellByColumnAndRow(4, $row)->getValue();
            $price = $worksheet->getCellByColumnAndRow(5, $row)->getValue();
            $qty = $worksheet->getCellByColumnAndRow(6, $row)->getValue();
            $stockval = $qty*$price;
            
            // Prepare the SQL statement
            $stmt = $db->prepare("SELECT DISTINCT category, inventory, sell_type FROM products WHERE med_name = :med_name  AND status = :status");
            // Bind the parameter
            $stmt->bindParam(':med_name', $med_name, PDO::PARAM_STR);
            $stmt->bindParam(':status', $status, PDO::PARAM_STR);
            // Execute the query
            $stmt->execute();
            // Fetch all rows as an associative array
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            // Iterate over the result set and echo the category
            foreach($result as $res) {
                $category = $res['category'];
                $inventory= $res['inventory'];
                $sell_type = $res['sell_type'];
                echo "Category: $category<br>";
            }

         

          $stmt = $db->prepare("INSERT INTO products (med_name, reg_date, batch_no,category, inventory, sell_type, expiry_date, price,status,stockval) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            $stmt->execute([$med_name, $reg_date, $batch_no, $category, $inventory, $sell_type, $expiry_date, $price, $status, $stockval]);

        }

        $db->commit(); // Commit the transaction

        $response["success"] = true;
        $response["error"] = null;
    

?>
