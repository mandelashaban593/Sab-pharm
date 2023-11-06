<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

if(isset($_POST['memi'])) $id = $_POST['memi'];
if(isset($_POST['date'])) $date = date('m/d/y', strtotime($_POST['date']));
if(isset($_POST['item'])) $item = $_POST['item'];
if(isset($_POST['amount'])) $amount= $_POST['amount'];
if(isset($_POST['remarks'])) $remarks = $_POST['remarks'];
if(isset($_POST['contact_person'])) $contact_person = $_POST['contact_person'];


$sql = "UPDATE expenses
        SET entry_date=?, item=?, amount=?, remarks=?, contact_person=?
		WHERE expense_id=?";
$q = $db->prepare($sql);
$q->execute(array($date,$item,$amount,$remarks,$contact_person,$id));

header("location: expenseslist.php?iv=$item");

?>

<!-- -->

