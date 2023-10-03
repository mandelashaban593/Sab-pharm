<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

$cash=0;
if(isset($_POST['invoice'])) $invoice= $_POST['invoice'];

if(isset($_POST['cashier'])) $cashier = $_POST['cashier'];

if(isset($_POST['date'])) $date = date($_POST['date']);

if(isset($_POST['pay_type'])) $ptype= $_POST['pay_type'];

if(isset($_POST['amount'])) $amount = $_POST['amount'];

if(isset($_POST['profit'])) $profit = $_POST['profit'];

if(isset($_POST['customer_name'])) $cname = $_POST['customer_name'];


/*echo "<br/>Invoice:";
echo $invoice;
echo "<br/>Cashier:";
echo $cashier;
echo "<br/>Due Date:";
echo $date;
echo "<br/>Product Type:";
echo $ptype;
echo "<br/>Amount:";
echo $amount;
echo "<br/>Profit:";
echo $profit;
echo "<br/>Customer Name:";
echo $cname;

echo "<br/>Pay type:";
echo $ptype;
*/
/*Credit payment is when a customer borrows money from a lender and lender pays for medicines using the borrowed money
or user uses the borrowed money to purchase the medicines (May be borrowing money from the pharmacists)
*/

$query = mysqli_query($con, "SELECT * FROM sales WHERE invoice_number='$invoice'") or die(mysqli_error($con)); //Retrieve invoices
$row_inv=mysqli_fetch_array($query);

if($ptype=='credit') {
$due_date = $_POST['date'];



$sql = "INSERT INTO sales (invoice_number,cashier,date,type,amount,profit,due_date,name, tme) VALUES ('$invoice','$cashier','$date','$ptype','$amount','$profit',CURDATE(),'$cname',CURTIME())";
if(!$row_inv){ //check if the transaction details already exist in sales table
$q = mysqli_query($con, $sql) or die(mysqli_error($con));
}

header("location: preview.php?invoice=$invoice");
exit();
}

/*Cash is when the customer pays by cash immediately , either partly or on full payment*/

if($ptype=='cash') {
$cash = $_POST['cash'];
$bal=$amount-$cash;

/*echo "<br/>Cash ";
echo $cash;
echo "<br/>Balance: ";
echo $bal;*/

$sql = "INSERT INTO sales (invoice_number,cashier,date,type,amount,profit,due_date,name,balance,amt_paid, tme) VALUES ('$invoice','$cashier','$date','$ptype','$amount','$profit',CURDATE(),'$cname','$bal','$cash',CURTIME())";
if(!$row_inv){ //check if the transaction details already exist in sales table
$q = mysqli_query($con, $sql) or die(mysqli_error($con));
}

header("location: preview.php?invoice=$invoice");
exit();
}
// query



?>