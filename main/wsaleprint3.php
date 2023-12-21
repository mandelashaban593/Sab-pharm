<?php 
ob_start(); // Start output buffering
require_once ('auth.php');
require '../conn2.php';
?>
<?php

ob_end_clean(); // Clean (erase) the output buffer
require_once('./TCPDF/tcpdf.php');

try {
$db_host        = 'localhost';
$db_user        = 'pmauser';
$db_pass        = 'root';
$db_database    = 'sales'; 

/* End config */

$dsn = 'mysql:host=' . $db_host . ';dbname=' . $db_database . ';charset=utf8'; // Set the charset to utf8

$db = new PDO($dsn, $db_user, $db_pass);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch ( PDOException $e ) {
        echo 'ERROR!';
        print_r( $e );
    }
// Function to fetch records from the database
function getRecords($invoiceNumber) {
    $invoiceNumber="RS-3232322";
    $result = $db->prepare("SELECT * FROM wsales WHERE invoice_number = :invoice_number");
    $result->bindParam(':invoice_number', $invoiceNumber, PDO::PARAM_STR);
    $result->execute();
    return $result->fetchAll(PDO::FETCH_ASSOC);
}



$invoiceNumber = isset($_GET['invoice']) ? $_GET['invoice'] : '';
$invoiceNumber="RS-3232322";
$recordsPerPage = 10;

// Fetch total records count from the database
$result = $db->prepare("SELECT COUNT(*) as total FROM wsales WHERE invoice_number = :invoice");
$result->bindParam(':invoice', $invoiceNumber, PDO::PARAM_STR);
$result->execute();
$totalRecords = $result->fetch(PDO::FETCH_ASSOC)['total'];

$totalPages = ceil($totalRecords / $recordsPerPage);

// Create PDF
$pdf = new TCPDF();
$pdf->SetAutoPageBreak(true, 15);

for ($page = 1; $page <= $totalPages; $page++) {
    $pdf->AddPage();

    // Fetch and display records in a table
    $pdf->writeHTML('<h1>Invoice</h1>');
    $pdf->writeHTML('<table border="1">');
    $pdf->writeHTML('<tr><th>Medicine</th><th>Batch No</th><th>Quantity</th><th>Amount</th><th>total</th></tr>');

    $startRecord = ($page - 1) * $recordsPerPage;
    $endRecord = min($startRecord + $recordsPerPage, $totalRecords);

    //$records = getRecords($invoiceNumber);

    $result = $db->prepare("SELECT * FROM wsales WHERE invoice_number = :invoice_number");
    $result->bindParam(':invoice_number', $invoiceNumber, PDO::PARAM_STR);
    $result->execute();
    $records = $result->fetchAll(PDO::FETCH_ASSOC);


    foreach ($records as $record) {
        $pdf->writeHTML('<tr><td>' . $record['med_name'] . '</td><td>' . $record['batch_no'] . '</td><td>' . $record['quantity'] . '</td><td>' . $record['amount'] . '</td><td>' . $record['total'] . '</td></tr>');
    }

    $pdf->writeHTML('</table>');

    // Add continue message at the bottom of every page except the last page
    if ($page < $totalPages) {
        $pdf->SetY(-15);
        $pdf->writeHTML('Continue Message');
    }

    // Add computer-generated invoice message at the bottom of every page
    $pdf->SetY(-30);
    $pdf->writeHTML('Computer-Generated Invoice Message');
}

// Output PDF as a download
$pdf->Output('invoice.pdf', 'D');
?>
