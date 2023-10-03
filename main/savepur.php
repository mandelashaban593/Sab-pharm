<?php
session_start();
//Connect to mysql server and selecting db
require 'conn2.php';

//Select database
$db = mysql_select_db('sales', $link);
if(!$db) {
	die("Unable to select database");
}


if(isset($_POST['iv'])) $a = $_POST['iv'];
if(isset($_POST['date'])) $b = $_POST['date'];
if(isset($_POST['supplier'])) $c = $_POST['supplier'];
if(isset($_POST['remarks'])) $d = $_POST['remarks'];
// query
$sql = "INSERT INTO purchases (invoice_number,date,suplier,remarks) VALUES ('$a','$b','$c','$d')";
$q = mysql_query($sql) or die(mysql_error());

header("location: purchasesportal.php?iv=$a");


?>