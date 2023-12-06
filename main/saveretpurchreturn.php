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
if(isset($_POST['transaction_id'])) $transaction_id=  $_POST['transaction_id'];
if(isset($_POST['return_invoice'])) $return_invoice=  $_POST['return_invoice'];

$vouch_type = "Credit Note";

$query = mysqli_query($con, "SELECT * FROM supliers WHERE suplier_id='$suplier_id'") or die(mysqli_error($con));
$row=mysqli_fetch_array($query);
$cname=$row['suplier_name'];

$total = 0;
echo "invoice: $return_invoice<br>";

foreach ($transaction_id as $key => $pid) {

       $prodid = $productid[$key];
       $qtytot = $quantity[$key]; // Use a different variable for quantity
        $pri = $price[$key];    // Use a different variable for price
        $amt = $amount[$key];  // Use a different variable for product type
        $batchno = $batch_no[$key];  // Use a different variable for product type
        $expirydate = $expiry_date[$key];  // Use a different variable for product type
        $invno = $invoice[$key];  // Use a different variable for product type
        $transid = $transaction_id[$key];  // Use a different variable for product type


       echo "Product 2: $prodid<br>";
       echo "Quantity 2: $qtytot<br>";
       echo "Price 2: $pri<br>";
       echo "Amount: $amt<br><br><br>";
       echo "Batch No: $batchno<br><br><br>";

           // Construct and execute the SQL update query


  try {
    // Create a PDO database connection
    // SQL query for update
    $sql = "UPDATE products  SET quantity = quantity - :quantity WHERE product_id= :product_id";
    
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


$sql = "UPDATE purchases_ret  SET quantity = quantity - :quantity, total = total - :total WHERE transaction_id= :transaction_id";

// Prepare the SQL statement
$stmt = $db->prepare($sql);
$qty = (int)$qtytot;
// Bind parameters
$stmt->bindParam(':quantity', $qty);
$stmt->bindParam(':total', $amt);
$stmt->bindParam(':transaction_id', $transid);
// Execute the query
$stmt->execute();

$rowCount = $stmt->rowCount(); // Get the number of rows affected


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

$sql = "INSERT INTO purchases_ret (invoice_number,cashier,date,type,amount,profit,due_date,name, tme,productid,total,pay_type,quantity,batch_no,suplier_id,vouch_type,exp_date,med_name, return_invoice) VALUES ('$invno','$cashier','$date','$ptype','$pri','$profit2',CURDATE(),'$cname',CURTIME(), '$prodid', '$amt', '$ptype', '$qty', '$batchno', '$suplier_id','$vouch_type', '$expirydate', '$med_name3', '$return_invoice')";
$q = mysqli_query($con, $sql) or die(mysqli_error($con));





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



echo "<br/>suplier_id: " . $suplier_id;


if($ptype == "credit" ) {

    try {
    // Check if the suplier_id exists in the database
    $checkQuery = "SELECT * FROM  purch_revenue  WHERE suplier_id = :suplier_id";
    $stmt = $db->prepare($checkQuery);
    $stmt->bindParam(':suplier_id', $suplier_id, PDO::PARAM_INT);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
        // The suplier_id exists; update the amount
        $updateQuery = "UPDATE purch_revenue SET credit = credit - :credit,suplier_name = :suplier_name,pay_type = :pay_type,date = :date WHERE suplier_id = :suplier_id";
        $stmt = $db->prepare($updateQuery);
        $stmt->bindParam(':suplier_id', $suplier_id, PDO::PARAM_INT);
         $stmt->bindParam(':suplier_name', $cname, PDO::PARAM_STR);
         $stmt->bindParam(':pay_type', $ptype, PDO::PARAM_STR);
         $stmt->bindParam(':date', $date, PDO::PARAM_STR);
        $stmt->bindParam(':credit', $totalAmount, PDO::PARAM_INT);
        $stmt->execute();
        echo "Amount updated successfully.";
    } else {
        // The suplier_id doesn't exist; insert a new record
        $insertQuery = "INSERT INTO purch_revenue (suplier_id,suplier_name, credit,pay_type, date) VALUES (:suplier_id,:suplier_name, :credit, :pay_type, :date)";
        $stmt = $db->prepare($insertQuery);
        $stmt->bindParam(':suplier_id', $suplier_id, PDO::PARAM_INT);
         $stmt->bindParam(':suplier_name', $cname, PDO::PARAM_STR);
         $stmt->bindParam(':pay_type', $ptype, PDO::PARAM_STR);
         $stmt->bindParam(':date', $date, PDO::PARAM_STR);
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
    // Check if the suplier_id exists in the database
    $checkQuery = "SELECT * FROM purch_revenue WHERE suplier_id = :suplier_id";
    $stmt = $db->prepare($checkQuery);
    $stmt->bindParam(':suplier_id', $suplier_id, PDO::PARAM_INT);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
        // The suplier_id exists; update the amount
        $updateQuery = "UPDATE purch_revenue SET cash = cash - :cash,suplier_name = :suplier_name,pay_type = :pay_type,date = :date WHERE suplier_id = :suplier_id";
        $stmt = $db->prepare($updateQuery);
        $stmt->bindParam(':suplier_id', $suplier_id, PDO::PARAM_INT);
         $stmt->bindParam(':suplier_name', $cname, PDO::PARAM_STR);
         $stmt->bindParam(':pay_type', $ptype, PDO::PARAM_STR);
         $stmt->bindParam(':date', $date, PDO::PARAM_STR);
        $stmt->bindParam(':cash', $totalAmount, PDO::PARAM_INT);
        $stmt->execute();
        echo "Amount updated successfully.";
    } else {

         $sql = "INSERT INTO purch_revenue (suplier_id,suplier_name,cash, pay_type,date)  VALUES (?, ?, ?, ?, ?)";
    
        // Use prepared statement
        $stmt = $db->prepare($sql);
        
        // Execute the statement with the values
        $stmt->execute([ $suplier_id, $cname,  $totalAmount,  $ptype,  $date]);

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
    $sql = "INSERT INTO  credit_payhist (suplier_id,suplier_name,credit,pay_type,date) VALUES (:suplier_id, :suplier_name, :credit, :pay_type, :date)";
    
    // Prepare the SQL statement
    $stmt = $db->prepare($sql);
    
    // Bind parameters
    $stmt->bindParam(':suplier_id', $suplier_id);
    $stmt->bindParam(':suplier_name', $cname);
    $stmt->bindParam(':credit', $totalAmount);
    $stmt->bindParam(':pay_type', $ptype);
    $stmt->bindParam(':date', $date);
  
    
    // Execute the query
    $stmt->execute();
    
    echo "Data inserted successfully!";


} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

} // End if statement*/



if($ptype == "cash" ) {  //Start if statement

try {
    // Create a PDO database connectio
    
    // SQL query with placeholders
    
    $sql = "INSERT INTO  credit_payhist (suplier_id,suplier_name,cash,pay_type,date) VALUES (:suplier_id, :suplier_name, :cash, :pay_type, :date)";
    
    // Prepare the SQL statement
    $stmt = $db->prepare($sql);
    
    // Bind parameters
    $stmt->bindParam(':suplier_id', $suplier_id);
    $stmt->bindParam(':suplier_name', $cname);
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






header("location: purchasereturnprint.php?invoice=$return_invoice");
exit();



?>