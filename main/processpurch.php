<?php
session_start();
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
if(isset($_POST['customer_name'])) $cname = $_POST['customer_name'];
if(isset($_POST['productid'])) $productid = $_POST['productid'];
if(isset($_POST['batch_no'])) $batch_no=  $_POST['batch_no']; 

  for ($i = 0; $i <= count((array)$productid); $i++) {
        $productid = $productid[$i];
        $quantity = $quantity[$i];
        $price = $price[$i];
        $total = $total[$i];
        $ptype = $ptype[$i];
        
        echo "Product: $productid<br>";
        echo "Quantity: $quantity<br>";
        echo "Price: $price<br>";
        echo "Total Price: $total<br><br>";
		$query = mysqli_query($con, "SELECT price,category,med_name,profit,quantity FROM products WHERE product_id= '$productid'") or die(mysqli_error($con));
		$row=mysqli_fetch_array($query);
		$price=$row['price'];
		$category=$row['category'];
		$med_name=$row['med_name'];
		$profit=$row['profit'];
		$qty_left=$row['quantity'];
		$o_price=$row['o_price'];
		$profit = $price - $o_price;
		$qty_left=(int)$qty_left - (int)$quantity;
		$sql = "UPDATE products 
		        SET quantity='$qty_left'
				WHERE product_id='$productid'";
		$query2 = mysqli_query($con, $sql) or die(mysqli_error($con));

		if($ptype=='credit') {
		$due_date = $_POST['date'];

		$sql = "INSERT INTO sales (invoice_number,cashier,date,type,amount,profit,due_date,name, tme,productid,total,pay_type,quantity) VALUES ('$invoice','$cashier','$date','$ptype','$price','$profit',CURDATE(),'$cname',CURTIME(), '$productid', '$total', '$ptype', '$quantity')";

		$q = mysqli_query($con, $sql) or die(mysqli_error($con));
		
		
		}

		/*Cash is when the customer pays by cash immediately , either partly or on full payment*/

		if($ptype=='cash') {
		$due_date = $_POST['date'];

		$sql = "INSERT INTO sales (invoice_number,cashier,date,type,amount,profit,due_date,name, tme,productid,total,pay_type,quantity) VALUES ('$invoice','$cashier','$date','$ptype','$price','$profit',CURDATE(),'$cname',CURTIME(), '$productid', '$total', '$ptype', '$quantity')";
		$q = mysqli_query($con, $sql) or die(mysqli_error($con));
		
		
	}


}


    
header("location: preview.php?invoice=$invoice");
exit();




?>