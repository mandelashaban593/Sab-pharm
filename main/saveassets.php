<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

if(isset($_POST['name'])) $a=$_POST['name'];
if(isset($_POST['date'])) $b = date('m/d/y', strtotime($_POST['date']));
if(isset($_POST['amount'])) $amount= $_POST['amount'];
if(isset($_POST['supplier'])) $c = $_POST['supplier'];
if(isset($_POST['remarks'])) $d = $_POST['remarks'];
if(isset($_POST['asset_cat'])) $asset_cat = $_POST['asset_cat'];
// query
$sql = "INSERT INTO assets (entry_date,name,amount,supplier,asset_cat,remarks) VALUES ('$b','$a','$amount','$c','$asset_cat','$d')";
$q = mysqli_query($con, $sql) or die(mysqli_error($con));

header("location: assets.php?iv=$name");


?>