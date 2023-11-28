<?php
ob_start(); // Start output buffering
require_once('auth.php');
require '../conn2.php';
?>
<?php
ob_end_clean(); // Clean (erase) the output buffer
require_once('./fpdf/fpdf.php');

// Function to fetch records from the database
function getRecords($db, $invoiceNumber, $start, $perPage)
{
    $result = $db->prepare("SELECT * FROM wsales WHERE invoice_number = :invoice_number LIMIT :start, :perPage");
    $result->bindParam(':invoice_number', $invoiceNumber, PDO::PARAM_STR);
    $result->bindParam(':start', $start, PDO::PARAM_INT);
    $result->bindParam(':perPage', $perPage, PDO::PARAM_INT);
    $result->execute();
    return $result->fetchAll(PDO::FETCH_ASSOC);
}

$invoiceNumber = isset($_GET['invoice']) ? $_GET['invoice'] : '';
$invoiceNumber = "RS-3232322";
$recordsPerPage = 10;

$result = $db->prepare("SELECT * FROM wsales WHERE invoice_number= :userid LIMIT 1");
$result->bindParam(':userid', $invoiceNumber);
$result->execute();
for ($i = 0; $rowa = $result->fetch(); $i++) {
    $suplier_id = $rowa['customer_id'];
    $date = $rowa['date'];
    $pay_type = $rowa['pay_type'];
    $cashier = $rowa['cashier'];

    $query = mysqli_query($con, "SELECT * FROM customer WHERE customer_id='$suplier_id'") or die(mysqli_error($con));
    $row = mysqli_fetch_array($query);
    $customer_name = $row['customer_name'];
    $customer_contact = $row['contact'];
    $address = $row['address'];
}

// Fetch total records count from the database
$result = $db->prepare("SELECT COUNT(*) as total FROM wsales WHERE invoice_number = :invoice");
$result->bindParam(':invoice', $invoiceNumber, PDO::PARAM_STR);
$result->execute();
$totalRecords = $result->fetch(PDO::FETCH_ASSOC)['total'];

$totalPages = ceil($totalRecords / $recordsPerPage);

// Create PDF
$pdf = new FPDF();
try {

    $totalAmount = 0;
    for ($page = 1; $page <= $totalPages; $page++) {
        // Fetch and display records in a table
        $startRecord = ($page - 1) * $recordsPerPage;
        $records = getRecords($db, $invoiceNumber, $startRecord, $recordsPerPage);

        if (!empty($records)) {
            $pdf->AddPage();
            $pdf->SetFont('Arial', '', 12);

            // Company Information
            $pdf->Cell(0, 10, 'Company: Your Company Name', 0, 1, 'L');
            $pdf->Cell(0, 10, 'Address: Your Company Address', 0, 1, 'L');
            $pdf->Cell(0, 10, 'Phone: Your Company Phone Number', 0, 1, 'L');
            $pdf->Ln(4); // Space between company info and customer details

            // Customer Information
            $pdf->Cell(0, 10, 'Customer: ' . $customer_name, 0, 1, 'L');
            $pdf->Cell(0, 10, 'Address: ' . $address, 0, 1, 'L');
            $pdf->Cell(0, 10, 'Contact: ' . $customer_contact, 0, 1, 'L');
            $pdf->Ln(4); // Space between customer info and invoice details

            // Invoice Details
            $pdf->Cell(0, 10, 'Invoice: ' . $invoiceNumber, 0, 1, 'C');
            $pdf->Cell(0, 10, 'Delivery Note: ' . 'Your Delivery Note', 0, 1, 'C');
            $pdf->Cell(0, 10, 'Mode of Payment: ' . $pay_type, 0, 1, 'C');
            $pdf->Cell(0, 10, 'Cashier: ' . $cashier, 0, 1, 'C');
            $pdf->Cell(0, 10, 'Date: ' . $date, 0, 1, 'C');
            $pdf->Ln(2); // Space between invoice details and table header

            // Table Header
            $pdf->SetFillColor(200, 220, 255);
            $pdf->SetFont('Arial', 'B', 12);
            $pdf->Cell(30, 10, 'Medicine', 1, 0, 'C', true);
            $pdf->Cell(30, 10, 'Batch No', 1, 0, 'C', true);
            $pdf->Cell(30, 10, 'Quantity', 1, 0, 'C', true);
            $pdf->Cell(30, 10, 'Amount', 1, 0, 'C', true);
            $pdf->Cell(30, 10, 'Total', 1, 1, 'C', true);

            foreach ($records as $record) {
                $pdf->Cell(30, 10, $record['med_name'], 1, 0, 'C');
                $pdf->Cell(30, 10, $record['batch_no'], 1, 0, 'C');
                $pdf->Cell(30, 10, $record['quantity'], 1, 0, 'C');
                $pdf->Cell(30, 10, $record['amount'], 1, 0, 'C');
                $pdf->Cell(30, 10, $record['total'], 1, 1, 'C');

                 // Add amount to totalAmount
                $totalAmount += $record['amount'];
            }

            // Add continue message at the bottom of every page except the last page
            if ($page < $totalPages) {
                $pdf->Ln(5);
                $pdf->SetFont('Arial', '', 10);
                $pdf->Cell(0, 10, 'Continue Message', 0, 1, 'C');
            }

            // Add computer-generated invoice message at the bottom of every page
            $pdf->Ln(5);
            $pdf->SetFont('Arial', '', 10);
            $pdf->Cell(0, 10, 'Computer-Generated Invoice Message', 0, 1, 'C');
        }

        
    }

    // Output PDF as a download
    $pdf->Output('invoice.pdf', 'D');
} catch (Exception $e) {
    die("PDF Error: " . $e->getMessage());
}
?>




<!-- 

Modify the following full source codes of php pdo mysql  fpdf  f such that it includes the functionality of  putting customer name, address, phone number and company name, phone number, address on the first left top page, then displaying the invoice number, delivery note , mode of payment , name of casher at the top  middle of the first page, then display date at the first page in the top middle or center  but customer information and company information should be separeated with two next lines but the customer details, invoice details  should be on the same paragraphs or lines . Maintain the computer generates message in  each page . Make sure each page has only 10 records from wsales mysql table with columns batch_no,quantity,amount and total , and company details, customer details invoice details should also be at the top of every page -->

<!-- 
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(30, 10, 'Medicine', 1, 0, 'C', true);
        $pdf->Cell(30, 10, 'Batch No', 1, 0, 'C', true);
        $pdf->Cell(30, 10, 'Quantity', 1, 0, 'C', true);
        $pdf->Cell(30, 10, 'Amount', 1, 0, 'C', true);
        $pdf->Cell(30, 10, 'Total', 1, 1, 'C', true);
 -->