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
$vouch_type = "Credit Note";

$query = mysqli_query($con, "SELECT * FROM customer WHERE customer_id='$suplier_id'") or die(mysqli_error($con));
$row=mysqli_fetch_array($query);
$cname=$row['customer_name'];

$total = 0;
 echo "invoice: $invoice<br>";

foreach ($productid as $key => $pid) {

       $prodid = $productid[$key];
       $qtytot = $quantity[$key]; // Use a different variable for quantity
        $pri = $price[$key];    // Use a different variable for price
        $amt = $amount[$key];  // Use a different variable for product type
        $batchno = $batch_no[$key];  // Use a different variable for product type
        $expirydate = $expiry_date[$key];  // Use a different variable for product type


       echo "Product 2: $prodid<br>";
       echo "Quantity 2: $qtytot<br>";
       echo "Price 2: $pri<br>";
       echo "Amount: $amt<br><br><br>";
       echo "Batch No: $batchno<br><br><br>";

           // Construct and execute the SQL update query


  try {
    // Create a PDO database connection
    // SQL query for update
    $sql = "UPDATE products  SET quantity = quantity + :quantity WHERE product_id= :product_id";
    
    // Prepare the SQL statement
    $stmt = $db->prepare($sql);
    $qty = (int)$qtytot;
    // Bind parameters
    $stmt->bindParam(':quantity', $qty);
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



   if($ptype=='cash') {
        echo "OOOK CASH";
    $sql = "INSERT INTO wsales (invoice_number,cashier,date,type,amount,profit,due_date,name, tme,productid,total,pay_type,quantity,batch_no,customer_id,vouch_type,expiry_date) VALUES ('$invoice','$cashier','$date','$ptype','$pri','$profit2',CURDATE(),'$cname',CURTIME(), '$prodid', '$amt', '$ptype', '$qty', '$batchno', '$suplier_id','$vouch_type', '$expirydate')";
    $q = mysqli_query($con, $sql) or die(mysqli_error($con));
    }
    
    if($ptype=='credit') {
        echo "OOOK CASH";
    $sql = "INSERT INTO wsales (invoice_number,cashier,date,type,amount,profit,due_date,name, tme,productid,total,pay_type,quantity,batch_no,customer_id,vouch_type,expiry_date) VALUES ('$invoice','$cashier','$date','$ptype','$pri','$profit2',CURDATE(),'$cname',CURTIME(), '$prodid', '$amt', '$ptype', '$qty', '$batchno', '$suplier_id', '$vouch_type', '$expirydate')";
    $q = mysqli_query($con, $sql) or die(mysqli_error($con));
    }
    




 }







  // Initialize the total amount
$totalAmount = 0;

// Iterate through the 'amount' array
foreach ($_POST['amount'] as $amount) {
    // Ensure the value is numeric before adding it to the total
    if (is_numeric($amount)) {
        $totalAmount += floatval($amount);
    }
}


echo "Total amount: " . $totalAmount;


if($ptype == "credit" ) {

    try {
    // Check if the customer_id exists in the database
    $checkQuery = "SELECT * FROM customer_credit WHERE customer_id = :customer_id";
    $stmt = $db->prepare($checkQuery);
    $stmt->bindParam(':customer_id', $suplier_id, PDO::PARAM_INT);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
        // The customer_id exists; update the amount
        $updateQuery = "UPDATE customer_credit SET credit = credit + :credit,customer_name = :customer_name WHERE customer_id = :customer_id";
        $stmt = $db->prepare($updateQuery);
        $stmt->bindParam(':customer_id', $suplier_id, PDO::PARAM_INT);
         $stmt->bindParam(':customer_name', $cname, PDO::PARAM_STR);
        $stmt->bindParam(':credit', $totalAmount, PDO::PARAM_INT);
        $stmt->execute();
        echo "Amount updated successfully.";
    } else {
        // The customer_id doesn't exist; insert a new record
        $insertQuery = "INSERT INTO customer_credit (customer_id,customer_name, credit) VALUES (:customer_id,:customer_name, :credit)";
        $stmt = $db->prepare($insertQuery);
        $stmt->bindParam(':customer_id', $suplier_id, PDO::PARAM_INT);
         $stmt->bindParam(':customer_name', $cname, PDO::PARAM_STR);
        $stmt->bindParam(':credit', $totalAmount, PDO::PARAM_INT);
        $stmt->execute();
        echo "New record inserted successfully.";
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}



}



if($ptype == "cash" ) {

    try {
    // Check if the customer_id exists in the database
    $checkQuery = "SELECT * FROM customer_credit WHERE customer_id = :customer_id";
    $stmt = $db->prepare($checkQuery);
    $stmt->bindParam(':customer_id', $suplier_id, PDO::PARAM_INT);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
        // The customer_id exists; update the amount
        $updateQuery = "UPDATE customer_credit SET cash = cash + :cash,customer_name = :customer_name WHERE customer_id = :customer_id";
        $stmt = $db->prepare($updateQuery);
        $stmt->bindParam(':customer_id', $suplier_id, PDO::PARAM_INT);
         $stmt->bindParam(':customer_name', $cname, PDO::PARAM_STR);
        $stmt->bindParam(':cash', $totalAmount, PDO::PARAM_INT);
        $stmt->execute();
        echo "Amount updated successfully.";
    } else {
        // The customer_id doesn't exist; insert a new record
        $insertQuery = "INSERT INTO customer_credit (customer_id,customer_name, cash) VALUES (:customer_id,:customer_name, :cash)";
        $stmt = $db->prepare($insertQuery);
        $stmt->bindParam(':customer_id', $suplier_id, PDO::PARAM_INT);
         $stmt->bindParam(':customer_name', $cname, PDO::PARAM_STR);
        $stmt->bindParam(':cash', $totalAmount, PDO::PARAM_INT);
        $stmt->execute();
        echo "New record inserted successfully.";
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}



}







if($ptype == "credit" ) {  //Start if statement

try {
    // Create a PDO database connectio
    
    // SQL query with placeholders
    $sql = "INSERT INTO  cust_payhist (customer_id,customer_name,credit,pay_type,date) VALUES (:customer_id, :customer_name, :credit, :pay_type, :date)";
    
    // Prepare the SQL statement
    $stmt = $db->prepare($sql);
    
    // Bind parameters
    $stmt->bindParam(':customer_id', $suplier_id);
    $stmt->bindParam(':customer_name', $cname);
    $stmt->bindParam(':credit', $totalAmount);
    $stmt->bindParam(':pay_type', $ptype);
    $stmt->bindParam(':date', $date);
  
    
    // Execute the query
    $stmt->execute();
    
    echo "Data inserted successfully!";


} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

} // End if statement



if($ptype == "cash" ) {  //Start if statement

try {
    // Create a PDO database connectio
    
    // SQL query with placeholders
    $sql = "INSERT INTO  cust_payhist (customer_id,customer_name,cash,pay_type,date) VALUES (:customer_id, :customer_name, :cash, :pay_type, :date)";
    
    // Prepare the SQL statement
    $stmt = $db->prepare($sql);
    
    // Bind parameters
    $stmt->bindParam(':customer_id', $suplier_id);
    $stmt->bindParam(':customer_name', $cname);
    $stmt->bindParam(':cash', $totalAmount);
    $stmt->bindParam(':pay_type', $ptype);
    $stmt->bindParam(':date', $date);
  
    
    // Execute the query
    $stmt->execute();
    
    echo "Data inserted successfully!";


} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

} // End if statement






header("location: wsaleretprint.php?invoice=$invoice");
exit();




?>