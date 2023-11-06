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

$query = mysqli_query($con, "SELECT * FROM customer WHERE customer_id='$suplier_id'") or die(mysqli_error($con));
$row=mysqli_fetch_array($query);
$cname=$row['customer_name'];

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
       echo "Amount: $amt<br><br><br>";
       echo "Batch No: $batchno<br><br><br>";

       $query = mysqli_query($con, "SELECT * FROM products WHERE product_id= '$prodid'") or die(mysqli_error($con));
    $row=mysqli_fetch_array($query);
    $price2=$row['price'];
    $category2=$row['category'];
    $med_name3=$row['med_name'];
    $profit3=$row['profit'];
    $qty_left2=$row['quantity'];
    $o_price2=$row['o_price'];
    //Retrive other values for insertion into product table
    $med_name=$row['med_name'];
    $category=$row['category'];
    $sell_price=$row['price'];
    $supplier=$row['supplier'];
    $gen_name=$row['gen_name'];
    $onhand_qty=$row['onhand_qty'];
    $qty_sold=$row['qty_sold'];
    $del_no=$row['del_no'];
    $status=$row['status'];
    $profit2 = (int)$pri - (int)$o_price2;
    $qtyleft=(int)$qty_left2 - (int)$qty;
    //Check if product batch number exists
    $query = mysqli_query($con, "SELECT * FROM products WHERE batch_no= '$batchno'") or die(mysqli_error($con));
    $row_batch=mysqli_fetch_array($query);
    if($row_batch){
        echo "Update worked";

  try {
    // Create a PDO database connection
    // SQL query for update
    $sql = "UPDATE products  SET quantity = :quantity WHERE product_id= :product_id";
    
    // Prepare the SQL statement
    $stmt = $db->prepare($sql);
    
    // Bind parameters
    $stmt->bindParam(':quantity', $qtyleft);
    $stmt->bindParam(':product_id', $prodid);
    // Execute the query
    $stmt->execute();
    
    $rowCount = $stmt->rowCount(); // Get the number of rows affected
    
   
  if ($rowCount > 0)
  {
  	echo "Product successfully updated";
    ?>
    

    <?php 
  }
  else
  {
  	echo "Product update failed";
    ?>
   

    <?php 
  }




} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}



    }


   if($ptype=='cash') {
        echo "OOOK CASH";
    $sql = "INSERT INTO wsales (invoice_number,cashier,date,type,amount,profit,due_date,name, tme,productid,total,pay_type,quantity,batch_no,customer_id) VALUES ('$invoice','$cashier','$date','$ptype','$pri','$profit2',CURDATE(),'$cname',CURTIME(), '$prodid', '$amt', '$ptype', '$qty', '$batchno', '$suplier_id')";
    $q = mysqli_query($con, $sql) or die(mysqli_error($con));
    }
    
    if($ptype=='credit') {
        echo "OOOK CASH";
    $sql = "INSERT INTO wsales (invoice_number,cashier,date,type,amount,profit,due_date,name, tme,productid,total,pay_type,quantity,batch_no,customer_id) VALUES ('$invoice','$cashier','$date','$ptype','$pri','$profit2',CURDATE(),'$cname',CURTIME(), '$prodid', '$amt', '$ptype', '$qty', '$batchno', '$suplier_id')";
    $q = mysqli_query($con, $sql) or die(mysqli_error($con));
    }
    
    

    


 }


require_once('partial_wscashflow.php');


header("location: wholesalespreview.php?invoice=$invoice");
exit();




?>