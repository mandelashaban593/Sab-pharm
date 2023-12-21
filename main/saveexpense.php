<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

if(isset($_POST['date'])) $date = date('m/d/y', strtotime($_POST['date']));
if(isset($_POST['item'])) $item = $_POST['item'];
if(isset($_POST['amount'])) $amount= $_POST['amount'];
if(isset($_POST['remarks'])) $remarks = $_POST['remarks'];

// query
$sql = "INSERT INTO expenses (entry_date,item,amount,remarks) VALUES ('$date','$item','$amount','$remarks')";
$q = mysqli_query($con, $sql) or die(mysqli_error($con));
header("location: expenseslist.php?iv=$item");

?>

<!-- -->
