<?php
include('../conn2.php');
?>
<?php
require '../vendor/autoload.php'; // Load PhpSpreadsheet library

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;



  

    // Fetch the data for the selected invoice_number using PDO
    $sql = "
        SELECT *
        FROM products
        WHERE (med_name, product_id) IN (
            SELECT med_name, MIN(product_id) as min_id
            FROM products
            WHERE status = 'Active'
            GROUP BY med_name
        ) AND status = 'Active';
    ";

    $stmt = $db->prepare($sql);
    $stmt->execute();
    // Fetch all rows as an associative array
    $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if ($data) {
        // Create a new PhpSpreadsheet instance
        $spreadsheet = new Spreadsheet();

        // Create a worksheet
        $worksheet = $spreadsheet->getActiveSheet();

        // Add your data to the worksheet
        $worksheet->setCellValue('A1', 'Medicine Name');
        $worksheet->setCellValue('B1', 'date');
        $worksheet->setCellValue('C1', 'Batch No');
        $worksheet->setCellValue('D1', 'Expiry date');
        $worksheet->setCellValue('E1', 'Price');
        $worksheet->setCellValue('F1', 'Quantity');



        $row = 2; // Start from row 2
        foreach ($data as $record) {
            $worksheet->setCellValue('A' . $row, $record['med_name']);
            $worksheet->setCellValue('B' . $row, $record['reg_date']);
            $worksheet->setCellValue('C' . $row, $record['batch_no']);
            $worksheet->setCellValue('D' . $row, $record['expiry_date']);
            $worksheet->setCellValue('E' . $row, $record['price']);
            $worksheet->setCellValue('F' . $row, $record['quantity']);
            $row++;
        }

      
        // Create a writer
        $writer = new Xlsx($spreadsheet);

        // Set the file name
        $filename = 'productsList'  . '.xlsx';

        // Send headers to trigger download

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet; charset=UTF-8');
        header('Content-Disposition: attachment; filename="' . $filename . '"');

   
        ob_end_clean();
        // Write the spreadsheet to a file or to the browser
        $writer->save('php://output');
 
        exit;
    }


// Redirect back if no invoice_number or records not found
/*header('Location: purchinvsumm.php?invoice_number=$invoiceNumber');
exit;*/



?>