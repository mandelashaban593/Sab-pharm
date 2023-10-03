<?php
// configuration
include('../connect.php');

// new data

if(isset($_POST['memi'])) $id = $_POST['memi'];
if(isset($_POST['name'])) $a = $_POST['name'];
if(isset($_POST['business_name'])) $b=$_POST['business_name'];
if(isset($_POST['address'])) $c = $_POST['address'];
if(isset($_POST['contact'])) $d = $_POST['contact'];
if(isset($_POST['note'])) $e = $_POST['note'];

// query
$sql = "UPDATE user
        SET name=?, business_name=?,business_address=?, work_contact=?, note=?
		WHERE  id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$d,$e,$id));
header("location: search_asupplier.php");

?>