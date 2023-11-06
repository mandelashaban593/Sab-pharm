n<?php
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
if(isset($_POST['customer_name'])) $customer_id = $_POST['customer_name'];
if(isset($_POST['productid'])) $productid = $_POST['productid'];
if(isset($_POST['batch_no'])) $batch_no=  $_POST['batch_no']; 


$query = mysqli_query($con, "SELECT * FROM customer WHERE customer_id= '$customer_id'") or die(mysqli_error($con));
$row=mysqli_fetch_array($query);
$cname = $row['customer_name'];

foreach ($productid as $key => $pid) {
	
        $prodid = $productid[$key];
        $qty = $quantity[$key];
        $pri = $price[$key];
        $tot = $total[$key];
        $pty = $ptype[$key];
        
        echo "Product: $prodid<br>";
        echo "Quantity: $qty<br>";
        echo "Price: $pri<br>";
        echo "Total Price: $tot<br><br>";
   			$query = mysqli_query($con, "SELECT price,category,med_name,profit,quantity FROM products WHERE product_id= '$prodid'") or die(mysqli_error($con));
				$row=mysqli_fetch_array($query);
				$rate=$row['price'];
				$cat=$row['category'];
				$medname=$row['med_name'];
				$prof=$row['profit'];
				$qty_lef=$row['quantity'];
				$opri=$row['o_price'];
				$qtylef=(int)$qty_lef - (int)$qty;
				$sql = "UPDATE products 
		        SET quantity='$qtylef'
				WHERE product_id='$prodid'";
				$query2 = mysqli_query($con, $sql) or die(mysqli_error($con));

				if($pty=='cash') {
				$due_date = $_POST['date'];

				$sql = "INSERT INTO sales (invoice_number,cashier,date,type,amount,profit,due_date,name, tme,productid,total,pay_type,quantity,customer_id) VALUES ('$invoice','$cashier','$date','$pty','$pri','$prof',CURDATE(),'$cname',CURTIME(), '$prodid', '$tot', '$pty', '$qty','$customer_id')";
				$q = mysqli_query($con, $sql) or die(mysqli_error($con));
		
		}

			if($pty=='credit') {
				$due_date = $_POST['date'];

				$sql = "INSERT INTO sales (invoice_number,cashier,date,type,amount,profit,due_date,name, tme,productid,total,pay_type,quantity,customer_id) VALUES ('$invoice','$cashier','$date','$pty','$pri','$prof',CURDATE(),'$cname',CURTIME(), '$prodid', '$tot', '$pty', '$qty','$customer_id')";
				$q = mysqli_query($con, $sql) or die(mysqli_error($con));
		
		}



		

}
    
header("location: preview.php?invoice=$invoice&date=$date");
exit();




?>