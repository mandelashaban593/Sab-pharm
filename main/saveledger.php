<?php
session_start();
//Connect to mysql server and selecting db
require 'conn2.php';

$a = date("m/d/Y");

if(isset($_POST['name'])) $b = $_POST['name'];
if(isset($_POST['invoice'])) $c = $_POST['invoice'];
if(isset($_POST['tot'])) $d = $_POST['tot'];
if(isset($_POST['amount'])) $e = $_POST['amount'];
if(isset($_POST['remarks'])) $f = $_POST['remarks'];


$results = mysql_query("SELECT sum(amount) FROM collection WHERE name= '$a'");
while($rows=mysql_fetch_assoc($query)){
$sdsdd=$rows['sum(amount)'];
if($sdsdd==''){
$dsdsd=0;
}
if($sdsdd!=''){
$dsdsd=$rows['sum(amount)'];
}
}				
$b1=$d-$dsdsd;
$balance=$b1-$e;

$sql = "INSERT INTO collection (date,name,invoice,amount,remarks,balance) VALUES ('$a','$b','$c','$e','$f','$balance')";
$q = mysql_query($sql) or die(mysql_error());

$sqla = "UPDATE sales 
        SET balance='$balance', due_date='$a'
		WHERE invoice_number='$c'";
$qa = mysql_query($sqla) or die(mysql_error());

header("location: customer_ledger.php.?cname=$b");

?>