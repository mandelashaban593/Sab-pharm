<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

if(isset($_POST['memi'])) $id = $_POST['memi'];
if(isset($_POST['date'])) $date = date('m/d/y', strtotime($_POST['date']));
if(isset($_POST['name'])) $name = $_POST['name'];
if(isset($_POST['amount'])) $amount= $_POST['amount'];
if(isset($_POST['remarks'])) $remarks= $_POST['remarks'];

$sql = "UPDATE equity
        SET entry_date=?, name=?, amount=?, remarks=?
		WHERE equity_id=?";
$q = $db->prepare($sql);
$q->execute(array($date,$name,$amount,$remarks,$id));

header("location: equity.php?iv=$name");


?>
