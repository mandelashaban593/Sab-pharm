<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);

//Connect to mysql server and selecting db
require '../conn2.php';
$cash=0;
if(isset($_POST['invoice'])) $invoice= $_POST['invoice'];
if(isset($_POST['cashier'])) $cashier = $_POST['cashier'];
if(isset($_POST['date'])) $date = date($_POST['date']);
if(isset($_POST['pay_type'])) $ptype= $_POST['pay_type'];
if(isset($_POST['quantity'])) $quantity= $_POST['quantity'];
if(isset($_POST['price'])) $price = $_POST['price'];
if(isset($_POST['total'])) $total = $_POST['total'];
if(isset($_POST['customer_name'])) $suplier_id = $_POST['customer_name'];
if(isset($_POST['productid'])) $productid = $_POST['productid'];
if(isset($_POST['batch_no'])) $batch_no=  $_POST['batch_no']; 
if(isset($_POST['amount'])) $amount=  $_POST['amount']; 
if(isset($_POST['expiry_date'])) $expiry_date=  $_POST['expiry_date'];

$query = mysqli_query($con, "SELECT * FROM supliers WHERE suplier_id='$suplier_id'") or die(mysqli_error($con));
$row=mysqli_fetch_array($query);
$cname=$row['suplier_name'];
$profit2=0;
$total = 0;
 echo "invoice: $invoice<br>";

foreach ($productid as $key => $pid) {

	  $prodid = $productid[$key];
	  $qty = $quantity[$key]; // Use a different variable for quantity
	  $pri = $price[$key];    // Use a different variable for price
	  $amt = $amount[$key];  // Use a different variable for product type
	  $batchno = $batch_no[$key];  // Use a different variable for product type
	  $expirydate = $expiry_date[$key];  // Use a different variable for product type

       echo "Product 2: $prodid<br>";
       echo "Quantity 2: $qty<br>";
       echo "Price 2: $pri<br>";
       echo "Type: $ptype<br>";
       echo "Amount: $amt<br><br><br>";
       echo "Batch No: $batchno<br><br><br>";

	   //Check if product batch number exists
	

	$sql = "INSERT INTO purchases_rever (invoice_number,cashier,date,type,amount,profit,due_date,name, tme,productid,total,pay_type,quantity,exp_date,batch_no,suplier_id) VALUES ('$invoice','$cashier','$date','$ptype','$pri','$profit2',CURDATE(),'$cname',CURTIME(), '$prodid', '$amt', '$ptype', '$qty', '$expirydate', '$batchno', '$suplier_id')";
	$q = mysqli_query($con, $sql) or die(mysqli_error($con));
	
	

 	




} // End if statement






header("location: purchasepreview.php?invoice=$invoice");
exit();



?>