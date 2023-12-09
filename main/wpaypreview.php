<?php
ob_start(); // Start output buffering
require_once('auth.php');
require '../conn2.php';

function formatMoney($number, $fractional=false) {
if ($fractional) {
    $number = sprintf('%.2f', $number);
}
while (true) {
    $replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1,$2', $number);
    if ($replaced != $number) {
        $number = $replaced;
    } else {
        break;
    }
}
return $number;
}
?>
<?php
ob_end_clean(); // Clean (erase) the output buffer
require_once('./fpdf/fpdf.php');

// Function to fetch records from the database
function getRecords($db, $id, $start, $perPage)
{
    $result = $db->prepare("SELECT * FROM wcredit_payhist  WHERE transaction_id = :transaction_id LIMIT :start, :perPage");
    $result->bindParam(':transaction_id', $transaction_id, PDO::PARAM_STR);
    $result->bindParam(':start', $start, PDO::PARAM_INT);
    $result->bindParam(':perPage', $perPage, PDO::PARAM_INT);
    $result->execute();
    return $result->fetchAll(PDO::FETCH_ASSOC);
}

$id= isset($_GET['id']) ? $_GET['id'] : '';
//$invoiceNumber = "RS-3232322";
$recordsPerPage = 7;

	$result = $db->prepare("SELECT * FROM wcredit_payhist WHERE transaction_id= :userid LIMIT 1");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $rowa = $result->fetch(); $i++){
	$pay_type = $rowa['pay_type'];
	$date = $rowa['date'];
/*
	echo $pay_type; echo"<br>";*/


}

$result = $db->prepare("SELECT * FROM wcredit_payhist WHERE transaction_id	= :userid LIMIT 1");
$result->bindParam(':userid', $id);
$result->execute();
for($i=0; $rowa = $result->fetch(); $i++){
$suplier_id = $rowa['suplier_id'];
$date = $rowa['date'];	

$query = mysqli_query($con, "SELECT * FROM supliers WHERE suplier_id='$suplier_id'") or die(mysqli_error($con));
$row=mysqli_fetch_array($query);
$suplier_name=$row['suplier_name'];
$suplier_contact=$row['suplier_contact'];
$suplier_address=$row['suplier_address'];
/*
echo $suplier_name; echo"<br>";

echo $suplier_address; echo "<br>";*/

}

	

// Fetch total records count from the database
$result = $db->prepare("SELECT COUNT(*) as total FROM wcredit_payhist  WHERE transaction_id  = :transaction_id");
$result->bindParam(':transaction_id', $id, PDO::PARAM_STR);
$result->execute();
$totalRecords = $result->fetch(PDO::FETCH_ASSOC)['total'];

//$totalPages = ceil($totalRecords / $recordsPerPage);

// Create PDF
$pdf = new FPDF();
try {
    $totalAmount = 0;
    $startRecord = 0;
    $recordCount = 1;

        $records = $db->prepare("SELECT * FROM wcredit_payhist  WHERE transaction_id = :transaction_id ");
	    $records->bindParam(':transaction_id', $id, PDO::PARAM_STR);
	    $records->execute();


        if (!empty($records)) {
            $pdf->AddPage();
            $pdf->SetFont('Arial', '', 12);

            // Company Information (Top Left)
            // Wholesale Invoice Message (Top Center)
            $pdf->SetXY(($pdf->GetPageWidth() / 2) - 90, 10);
            $pdf->SetFont('Arial', 'B', 10);
            $pdf->Cell(0, 10, 'Payment', 0, 1, 'C'); // Change this line accordingly
             $pdf->Cell(0, 8,'(Whole sale)', 0, 1, 'C'); // Change this line accordingly
            $pdf->SetFont('Arial', '', 12);

             // Invoice Details (Top Middle)
            $pdf->SetXY(($pdf->GetPageWidth() / 2) - 90, $pdf->GetY());
            $pdf->SetFont('Arial', 'B', 12);
            $pdf->Cell(0, 10, 'Transaction Id: ' . $id, 0, 1, 'C');

            $pdf->SetXY(($pdf->GetPageWidth() / 2) - 20, $pdf->GetY() + 10);

            // Company Information (Top Left)
            $pdf->SetXY(10, 30); // Adjust the Y position based on your layout
            $pdf->SetFont('Arial', 'B', 12);
            $pdf->Cell(0, 10, 'Ojinga Pharmacy', 0, 1, 'L');
            $pdf->SetFont('Arial', '', 10);
            $pdf->Cell(0, 10, 'P.o Box 16362 Kampala (U)', 0, 1, 'L');
            $pdf->Cell(0, 5, 'Plot 95E Kutch Road West', 0, 1, 'L');

            // Customer Information (Top Left)
            $pdf->SetXY(10, 65); // Adjust the Y position based on your layout
            $pdf->SetFont('Arial', 'B', 12);
            $pdf->Cell(0, 5, $suplier_name, 0, 1, 'L');
            $pdf->SetFont('Arial', '', 10);
            $pdf->Cell(0, 10, $suplier_address, 0, 1, 'L');
            $pdf->Cell(0, 5, $suplier_contact, 0, 1, 'L');
            $pdf->SetXY(10, $pdf->GetY() + 20);

           

            // Mode of Payment, Cashier, and Date (Top Right)
            $pdf->SetXY($pdf->GetPageWidth() - 90, 30); // Adjust the Y position based on your layout
            $pdf->Cell(0, 10, 'Payment: ' . $pay_type, 0, 1, 'R');
            $pdf->SetXY($pdf->GetPageWidth() - 00, $pdf->GetY() + 5);
            $pdf->Cell(0, 10, 'Date: ' . $date, 0, 1, 'R');
            $pdf->SetFont('Arial', '', 10);
            $pdf->Ln(37); // Vertical space between details



            // Table Header
            $pdf->SetFillColor(200, 220, 255);
            $pdf->SetFont('Arial', 'B', 12);

            // Table Header
            $pdf->Cell(40, 10, 'S/No', 1, 0, 'C', true);
            $pdf->Cell(80, 10, 'Date', 1, 0, 'C', true);
            $pdf->Cell(70, 10, 'Amount', 1, 0, 'C', true);
            $pdf->Ln(14); // Vertical space between details
           // $recordCount = 0;

            foreach ($records as $record) {
             
   
            // Use MultiCell for slanted Medicine information
           		 $pdf->SetFont('Arial', '', 10);
            	$pdf->Cell(40, 10, $recordCount, 0, 0, 'C');

                // Other cells
                $pdf->SetFont('Arial', 'B', 10);
                $pdf->Cell(80, 10, $record['date'], 0, 0, 'C');
                $pdf->SetFont('Arial', '', 10);
                if($record['pay_type'] == 'credit') {
                $pdf->Cell(80, 10, formatMoney($record['credit']), 0, 0, 'C');
            	$totalAmount += $record['credit'];
            	}
            	if($record['pay_type'] == 'cash') {
                $pdf->Cell(70, 10, formatMoney($record['cash']), 0, 0, 'C');
            	$totalAmount += $record['cash'];
            	}


                // Add amount to totalAmount
                //$totalAmount += $record['amount'];

                $recordCount++;
            }

         

            // Add total amount of records, Ojinga Pharmacy, and Authorized Signatory at the bottom right corner of the last page
  
                $pdf->Ln(15); // Vertical space
                $pdf->SetFont('Arial', 'B', 10);
                $pdf->Cell(0, 7, 'Total Amount: ' . formatMoney($totalAmount), 0, 1, 'R');

                // Ojinga Pharmacy and Authorized Signatory
                $pdf->Ln(7); // Adjust spacing
                $pdf->Cell(0, 3, 'For Ojinga Pharmacy', 0, 1, 'R');
                $pdf->SetFont('Arial', '', 10);
                $pdf->Ln(8); // Adjust spacing
                $pdf->Cell(0, 7, 'Authorized Signatory', 0, 1, 'R');

                //Suplier and Authorized signatory
                $pdf->SetFont('Arial', 'B', 10);
                $pdf->Cell(0, 10, 'For ' . $suplier_name, 0, 1, 'L');
                $pdf->SetFont('Arial', '', 10);
                $pdf->Cell(0, 10, 'Authorized Signatory', 0, 1, 'L');


                // Declaration message at the bottom left corner
                $pdf->Cell(0, 8, 'Declaration:', 0, 1, 'L');
                $pdf->Cell(0, 3, 'We declare that this invoice shows the actual price of the goods described', 0, 1, 'L');
                $pdf->Cell(0, 3, 'and that all particulars are true and correct.', 0, 1, 'L');

                $pdf->Ln(10);
                $pdf->SetFont('Arial', '', 10);
                $pdf->Cell(0, 10, 'This is a Computer Generated Invoice', 0, 1, 'C');
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