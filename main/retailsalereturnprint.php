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
    $result = $db->prepare("SELECT * FROM sales WHERE return_invoice = :return_invoice LIMIT :start, :perPage");
    $result->bindParam(':return_invoice', $invoiceNumber, PDO::PARAM_STR);
    $result->bindParam(':start', $start, PDO::PARAM_INT);
    $result->bindParam(':perPage', $perPage, PDO::PARAM_INT);
    $result->execute();
    return $result->fetchAll(PDO::FETCH_ASSOC);
}

$invoiceNumber = isset($_GET['invoice']) ? $_GET['invoice'] : '';
//$invoiceNumber = "RS-3232322";
$recordsPerPage = 8;

$result = $db->prepare("SELECT * FROM sales WHERE return_invoice= :userid LIMIT 1");
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
$result = $db->prepare("SELECT COUNT(*) as total FROM sales WHERE return_invoice = :invoice");
$result->bindParam(':invoice', $invoiceNumber, PDO::PARAM_STR);
$result->execute();
$totalRecords = $result->fetch(PDO::FETCH_ASSOC)['total'];

$totalPages = ceil($totalRecords / $recordsPerPage);

// Create PDF
$pdf = new FPDF();
try {
    $totalAmount = 0;
    $startRecord = 0;
    $recordCount = 0;

    for ($page = 1; $page <= $totalPages; $page++) {
        // Fetch and display records in a table
        $startRecord = ($page - 1) * $recordsPerPage;
        $records = getRecords($db, $invoiceNumber, $startRecord, $recordsPerPage);

        if (!empty($records)) {
            $pdf->AddPage();
            $pdf->SetFont('Arial', '', 12);

           // Company Information (Top Left)
            // Wholesale Invoice Message (Top Center)
            $pdf->SetXY(($pdf->GetPageWidth() / 2) - 90, 10);
            $pdf->SetFont('Arial', 'B', 12);
            $pdf->Cell(0, 10, 'Retail sale Return Invoice', 0, 1, 'C'); // Change this line accordingly
            $pdf->SetFont('Arial', '', 12);

             // Invoice Details (Top Middle)
            $pdf->SetXY(($pdf->GetPageWidth() / 2) - 90, $pdf->GetY());
            $pdf->SetFont('Arial', 'B', 12);
            $pdf->Cell(0, 10, 'Invoice: ' . $invoiceNumber, 0, 1, 'C');

            $pdf->SetXY(($pdf->GetPageWidth() / 2) - 20, $pdf->GetY() + 10);

            // Company Information (Top Left)
            $pdf->SetXY(10, 30); // Adjust the Y position based on your layout
            $pdf->SetFont('Arial', 'B', 12);
            $pdf->Cell(0, 10, 'Ojinga Pharmacy', 0, 1, 'L');
            $pdf->SetFont('Arial', '', 12);
            $pdf->Cell(0, 10, 'P.o Box 16362 Kampala (U)', 0, 1, 'L');
            $pdf->Cell(0, 5, 'Plot 95E Kutch Road West', 0, 1, 'L');

            // Customer Information (Top Left)
            $pdf->SetXY(10, 65); // Adjust the Y position based on your layout
            $pdf->SetFont('Arial', 'B', 12);
            $pdf->Cell(0, 5, $customer_name, 0, 1, 'L');
            $pdf->SetFont('Arial', '', 12);
            $pdf->Cell(0, 10, $address, 0, 1, 'L');
            $pdf->Cell(0, 5, $customer_contact, 0, 1, 'L');
            $pdf->SetXY(10, $pdf->GetY() + 20);

           

            // Mode of Payment, Cashier, and Date (Top Right)
            $pdf->SetXY($pdf->GetPageWidth() - 90, 30); // Adjust the Y position based on your layout
            $pdf->Cell(0, 10, 'Payment: ' . $pay_type, 0, 1, 'R');
            $pdf->SetXY($pdf->GetPageWidth() - 90, $pdf->GetY() + 5);
            $pdf->Cell(0, 10, 'Cashier: ' . $cashier, 0, 1, 'R');
            $pdf->SetXY($pdf->GetPageWidth() - 00, $pdf->GetY() + 5);
            $pdf->Cell(0, 10, 'Date: ' . $date, 0, 1, 'R');
            $pdf->SetFont('Arial', '', 12);
            $pdf->Ln(16); // Vertical space between details


            // Table Header
            $pdf->SetFillColor(200, 220, 255);
            $pdf->SetFont('Arial', 'B', 14);

            // Table Header
            $pdf->Cell(10, 10, 'S/No', 1, 0, 'C', true);
            $pdf->Cell(58, 10, 'Description', 1, 0, 'C', true);
            $pdf->Cell(30, 10, 'Quantity', 1, 0, 'C', true);
            $pdf->Cell(30, 10, 'Rate', 1, 0, 'C', true);
            $pdf->Cell(30, 10, 'Per', 1, 0, 'C', true);
            $pdf->Cell(30, 10, 'Amount', 1, 1, 'C', true);

           // $recordCount = 0;

            foreach ($records as $record) {
             

                $productid =$record['productid'];
                $query = mysqli_query($con, "SELECT price,category,med_name,profit,quantity,expiry_date,sell_type FROM products WHERE product_id= '$productid' ") or die(mysqli_error($con));
                $row2=mysqli_fetch_array($query);
                
                // Concatenate 'med_name', 'batch_no', and 'expiry_date' with appropriate indentation
                $medicineInfo = $row2['med_name'] . "\n\t\tBatch: " . $record['batch_no'] . "\n\t\tExpiry: " . $record['expiry_date'];


                $pdf->SetFont('Arial', '', 14);

                // Use MultiCell for Medicine information
                $pdf->Cell(10, 10, $recordCount, 0, 0, 'C');
                $pdf->SetFont('Arial', 'B', 12);
                $pdf->MultiCell(58, 6.5, $medicineInfo, 0, 'C');

                // Move to the next row
                $pdf->SetXY($pdf->GetX() + 68, $pdf->GetY() - 18); // Adjust X and Y coordinates

                // Other cells
                $pdf->SetFont('Arial', 'B', 14);
                $pdf->Cell(30, 10, $record['quantity'], 0, 0, 'C');
                $pdf->SetFont('Arial', '', 14);
                $pdf->Cell(30, 10, $record['amount'], 0, 0, 'C');
                $pdf->Cell(30, 10, $row2['sell_type'], 0, 0, 'C');
                $pdf->SetFont('Arial', 'B', 14);
                $pdf->Cell(30, 10, $record['total'], 0, 1, 'C');

                // Move back to the next row
                $pdf->SetXY(10, $pdf->GetY() + 10);

                // Add amount to totalAmount
                $totalAmount += $record['total'];

                $recordCount++;
            }

            // Update start record for the next page
            $startRecord += $recordsPerPage;

            // Add continue message at the bottom of every page except the last page
            if ($page < $totalPages) {
                $pdf->Ln(3);
                $pdf->SetFont('Arial', '', 10);
                $pdf->Cell(0, 10, 'Continued....', 0, 1, 'R');
                $pdf->Ln(3);
                $pdf->SetFont('Arial', '', 10);
                $pdf->Cell(0, 10, 'This is a Computer Generated Invoice', 0, 1, 'C');
            }

            // Add computer-generated invoice message at the bottom of every page

            // Add total amount of records, Ojinga Pharmacy, and Authorized Signatory at the bottom right corner of the last page
            if ($page == $totalPages) {
                $pdf->Ln(3); // Vertical space
                $pdf->SetFont('Arial', 'B', 12);
                $pdf->Cell(0, 7, 'Total Amount: ' . $totalAmount, 0, 1, 'R');

                // Ojinga Pharmacy and Authorized Signatory
                $pdf->Ln(15); // Adjust spacing
                $pdf->Cell(0, 3, 'For Ojinga Pharmacy', 0, 1, 'R');
                $pdf->SetFont('Arial', '', 10);
                $pdf->Ln(3); // Adjust spacing
                $pdf->Cell(0, 7, 'Authorized Signatory', 0, 1, 'R');

                // Declaration message at the bottom left corner
                $pdf->Cell(0, 5, 'Declaration:', 0, 1, 'L');
                $pdf->Cell(0, 3, 'We declare that this invoice shows the actual price of the goods described', 0, 1, 'L');
                $pdf->Cell(0, 3, 'and that all particulars are true and correct.', 0, 1, 'L');

                $pdf->Ln(10);
                $pdf->SetFont('Arial', '', 10);
                $pdf->Cell(0, 10, 'This is a Computer Generated Invoice', 0, 1, 'C');
            }
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

<!--  Modify below source codes to put the invoice number, Delivery note at the top middle of every page  .  Mode of payment, Cashier, and Date at the top right corner of  every page  . And company information and customer information at top left corner of every page . Make sure there is a good vertical space between invoice , delivery note details and the mode of payment , date  -->