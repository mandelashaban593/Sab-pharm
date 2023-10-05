<?php
// configuration
include('../connect.php');

// new data

if(isset($_POST['memi'])) $id = $_POST['memi'];
if(isset($_POST['name'])) $suplier_name = $_POST['name'];
if(isset($_POST['contact_person'])) $contact_person = $_POST['contact_person'];
if(isset($_POST['suplier_contact'])) $suplier_contact = $_POST['suplier_contact'];
if(isset($_POST['location'])) $location = $_POST['location'];
if(isset($_POST['suplier_address'])) $suplier_address = $_POST['suplier_address'];

// query
$sql = "UPDATE supliers
        SET suplier_name=?, contact_person=?,suplier_contact=?, location=?, suplier_address=?
		WHERE  suplier_id=?";
$q = $db->prepare($sql);
$q->execute(array($suplier_name,$contact_person,$suplier_contact,$location,$suplier_address,$id));
header("location: supplier.php");

?>