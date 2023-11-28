<?php
//ob_start(); // Start output buffering
require_once('auth.php');
require '../conn2.php';
?>
<?php

//ob_end_clean(); // Clean (erase) the output buffer
require_once('./fpdf/fpdf.php');

// Function to fetch records from the database
function getRecords($db, $invoiceNumber)
{
    $invoiceNumber = "RS-3232322";
    $result = $db->prepare("SELECT * FROM wsales WHERE invoice_number = :invoice_number");
    $result->bindParam(':invoice_number', $invoiceNumber, PDO::PARAM_STR);
    $result->execute();
    return $result->fetchAll(PDO::FETCH_ASSOC);
}

$invoiceNumber = isset($_GET['invoice']) ? $_GET['invoice'] : '';
$invoiceNumber = "RS-3232322";
$recordsPerPage = 10;

// Fetch total records count from the database
$result = $db->prepare("SELECT COUNT(*) as total FROM wsales WHERE invoice_number = :invoice");
$result->bindParam(':invoice', $invoiceNumber, PDO::PARAM_STR);
$result->execute();
$totalRecords = $result->fetch(PDO::FETCH_ASSOC)['total'];

$totalPages = ceil($totalRecords / $recordsPerPage);

// Create PDF
$pdf = new FPDF();
$pdf->AddPage();

try {
    for ($page = 1; $page <= $totalPages; $page++) {
        // Fetch and display records in a table
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(0, 10, 'Invoice', 0, 1, 'C');

        $pdf->SetFillColor(200, 220, 255);
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(30, 10, 'Medicine', 1, 0, 'C', true);
        $pdf->Cell(30, 10, 'Batch No', 1, 0, 'C', true);
        $pdf->Cell(30, 10, 'Quantity', 1, 0, 'C', true);
        $pdf->Cell(30, 10, 'Amount', 1, 0, 'C', true);
        $pdf->Cell(30, 10, 'Total', 1, 1, 'C', true);

        $startRecord = ($page - 1) * $recordsPerPage;
        $endRecord = min($startRecord + $recordsPerPage, $totalRecords);

        $records = getRecords($db, $invoiceNumber);

        foreach ($records as $record) {
            $pdf->Cell(30, 10, $record['med_name'], 1, 0, 'C');
            $pdf->Cell(30, 10, $record['batch_no'], 1, 0, 'C');
            $pdf->Cell(30, 10, $record['quantity'], 1, 0, 'C');
            $pdf->Cell(30, 10, $record['amount'], 1, 0, 'C');
            $pdf->Cell(30, 10, $record['total'], 1, 1, 'C');
        }

        // Add continue message at the bottom of every page except the last page
        if ($page < $totalPages) {
            $pdf->Ln(10);
            $pdf->SetFont('Arial', '', 10);
            $pdf->Cell(0, 10, 'Continue Message', 0, 1, 'C');
        }

        // Add computer-generated invoice message at the bottom of every page
        $pdf->Ln(10);
        $pdf->SetFont('Arial', '', 10);
        $pdf->Cell(0, 10, 'Computer-Generated Invoice Message', 0, 1, 'C');
    }

    // Output PDF as a download
    $pdf->Output('invoice.pdf', 'D');
} catch (Exception $e) {
    die("PDF Error: " . $e->getMessage());
}
?>
