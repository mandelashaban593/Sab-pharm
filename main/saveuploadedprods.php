<?php
session_start();
require '../conn2.php';
require 'vendor/autoload.php'; // Make sure you have Composer installed and ran `composer require phpoffice/phpspreadsheet`

use PhpOffice\PhpSpreadsheet\IOFactory;

// Ensure you have a valid PDO connection established

$response = ["success" => false, "error" => "An error occurred while uploading the data."];

try {

    // Check if a file was uploaded
    if (isset($_FILES['excelFile']) && $_FILES['excelFile']['error'] == UPLOAD_ERR_OK) {
        $file = $_FILES['excelFile']['tmp_name'];

        $objPHPExcel = IOFactory::load($file);
        $worksheet = $objPHPExcel->getActiveSheet();
        $highestRow = $worksheet->getHighestRow();

        $existingProducts = array(); // To store existing product names

        // Fetch the existing products
        $stmt = $db->query("SELECT med_name FROM products");
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $existingProducts[] = $row['med_name'];
        }

        $db->beginTransaction(); // Begin a transaction to ensure data consistency

        for ($row = 2; $row <= $highestRow; $row++) { // Start from 2 to skip the header row
            $productName = $worksheet->getCellByColumnAndRow(1, $row)->getValue();
            $price = $worksheet->getCellByColumnAndRow(2, $row)->getValue();
            $purchaseCost = $worksheet->getCellByColumnAndRow(3, $row)->getValue();
            $supplier = $worksheet->getCellByColumnAndRow(4, $row)->getValue();

            // Prepare and execute the SQL query to insert or update the product
            if (in_array($productName, $existingProducts)) {
                $stmt = $db->prepare("UPDATE products SET price = ?, purchase_cost = ?, supplier = ?, status = 'Obsolete' WHERE product_name = ?");
                $stmt->execute([$price, $purchaseCost, $supplier, $productName]);
            } else {
                $stmt = $db->prepare("INSERT INTO product (product_name, price, purchase_cost, supplier, status) VALUES (?, ?, ?, ?, 'Active')");
                $stmt->execute([$productName, $price, $purchaseCost, $supplier]);
            }
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
