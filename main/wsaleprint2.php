<?php 
ob_start(); // Start output buffering
require_once ('auth.php');
require '../conn2.php';
?>
<?php

ob_end_clean(); // Clean (erase) the output buffer
require_once('./TCPDF/tcpdf.php');

// Function to fetch sales records from the database
function getSalesRecords($id, $recordsPerPage, $startRecord) {
    global $db;
    $result = $db->prepare("SELECT * FROM wsales WHERE invoice_number = :invoice LIMIT $startRecord, $recordsPerPage");
    $result->bindParam(':invoice', $id);
    $result->execute();
    return $result->fetchAll(PDO::FETCH_ASSOC);
}

$id = "RS-3232322";
$recordsPerPage = 10;
$startRecord = 0;

// Fetch total records count from the database
$result = $db->prepare("SELECT COUNT(*) as total FROM wsales WHERE invoice_number = :invoice");
$result->bindParam(':invoice', $id);
$result->execute();
$totalRecords = $result->fetch(PDO::FETCH_ASSOC)['total'];

$totalPages = ceil($totalRecords / $recordsPerPage);

// Create PDF
$pdf = new TCPDF();
$pdf->SetAutoPageBreak(true, 15);

for ($page = 1; $page <= $totalPages; $page++) {
    $pdf->AddPage();

    // Fetch and display sales records in a table
    $pdf->writeHTML('<h1>Sales Records</h1>');
    $pdf->writeHTML('<table border="1">');
    $pdf->writeHTML('<tr><th>Item Name</th><th>Amount</th><th>Total</th></tr>');

    $salesRecords = getSalesRecords($id, $recordsPerPage, $startRecord);
    foreach ($salesRecords as $record) {
        $pdf->writeHTML('<tr><td>' . $record['med_name'] . '</td><td>' . $record['amount'] . '</td><td>' . $record['total'] . '</td></tr>');
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

    $startRecord += $recordsPerPage;
}

// Output PDF as a download
$pdf->Output('invoice.pdf', 'D');
?>
