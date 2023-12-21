<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';


if(isset($_POST['name'])) $a = $_POST['name'];
if(isset($_POST['date'])) $b =date('m/d/y', strtotime($_POST['date']));
if(isset($_POST['amount'])) $amount= $_POST['amount'];
if(isset($_POST['remarks'])) $d = $_POST['remarks'];
if(isset($_POST['liab_cat'])) $liab_cat = $_POST['liab_cat'];

// query
$sql = "INSERT INTO liabilities (entry_date,name,amount,liab_cat,remarks,supplier) VALUES ('$b','$a','$amount','$liab_cat','$d','')";
$q = mysqli_query($con, $sql) or die(mysqli_error($con));

header("location: liab.php?iv=$a");


?>

<!-- -->

