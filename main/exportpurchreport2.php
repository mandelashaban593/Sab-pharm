<?php
include('../conn2.php');
?>
<?php
require '../vendor/autoload.php'; // Load PhpSpreadsheet library

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

if (isset($_GET['invoice_number'])) {
    $invoiceNumber = $_GET['invoice_number'];

    echo "invoiceNumber: ";
    echo $invoiceNumber;

    // Fetch the data for the selected invoice_number using PDO
    $stmt = $db->prepare('SELECT * FROM purchases_ret WHERE   invoice_number = :invoice_number');
    $stmt->bindParam(':invoice_number', $invoiceNumber);
    $stmt->execute();
    $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if ($data) {
        // Create a new PhpSpreadsheet instance
        $spreadsheet = new Spreadsheet();

        // Create a worksheet
        $worksheet = $spreadsheet->getActiveSheet();

        // Add your data to the worksheet
        $worksheet->setCellValue('A1', 'Transaction Id');
        $worksheet->setCellValue('B1', 'date');
        $worksheet->setCellValue('C1', 'Invoice Number');
        $worksheet->setCellValue('D1', 'Cashier');
        $worksheet->setCellValue('E1', 'Batch Number');
        $worksheet->setCellValue('F1', 'Quantity');
        $worksheet->setCellValue('G1', 'Amount');


        $row = 2; // Start from row 2
        foreach ($data as $record) {
            $worksheet->setCellValue('A' . $row, $record['transaction_id']);
            $worksheet->setCellValue('B' . $row, $record['date']);
            $worksheet->setCellValue('C' . $row, $record['invoice_number']);
            $worksheet->setCellValue('D' . $row, $record['cashier']);
            $worksheet->setCellValue('E' . $row, $record['batch_no']);
            $worksheet->setCellValue('F' . $row, $record['quantity']);
            $worksheet->setCellValue('G' . $row, $record['amount']);
            $row++;
        }

        ob_start();

        // Create a writer
        $writer = new Xlsx($spreadsheet);

        // Set the file name
        $filename = 'invoice_' . $invoiceNumber . '.xlsx';

        // Send headers to trigger download

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet; charset=UTF-8');
        header('Content-Disposition: attachment; filename="' . $filename . '"');

   
        
        // Write the spreadsheet to a file or to the browser
        $writer->save('php://output');
        $content = ob_get_contents();
        ob_end_clean();
        exit;
    }
}

// Redirect back if no invoice_number or records not found
/*header('Location: purchinvsumm.php?invoice_number=$invoiceNumber');
exit;*/



?>