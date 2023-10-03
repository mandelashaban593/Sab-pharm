<?php
session_start();
require '../conn2.php';
//Connect to mysql server and selecting db
$status = "Available";
if(isset($_POST['med_name'])) $med_name = implode(", ", $_POST["med_name"]);
if(isset($_POST['quantity'])) $quantity = implode(", ", $_POST["quantity"]);
if(isset($_POST['telno'])) $telno = $_POST['telno'];
if(isset($_POST['username'])) $username = $_POST['username'];
if(isset($_POST['order_date'])) $order_date = date($_POST['order_date']);


echo $med_name;

echo "\n";
echo $quantity;

echo "\n";
echo $telno;


// query
$sql = "INSERT INTO supplies (med_name,quantity,telno,username,order_date) VALUES ('$med_name','$quantity','$telno','$username','$order_date')";
$q = mysqli_query($con, $sql) or die(mysqli_error($con));

header("location: order-supplies.php");


?>