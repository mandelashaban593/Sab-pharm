<?php
// configuration
include('../connect.php');

// new data
if(isset($_POST['memi'])) $id = $_POST['memi'];
if(isset($_POST['name'])) $a = $_POST['name'];
if(isset($_POST['address'])) $b = $_POST['address'];
if(isset($_POST['contact'])) $c = $_POST['contact'];
$d = 0;
$e = "";
if(isset($_POST['note'])) $f = $_POST['note'];
$g = 0;

// query
$sql = "UPDATE customer 
        SET customer_name=?, address=?, contact=?, membership_number=?, prod_name=?, note=?, expected_date=?
		WHERE customer_id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$d,$e,$f,$g,$id));
header("location: customer.php");

?>