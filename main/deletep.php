<?php
	include('../connect.php');


	if(isset($_GET['id'])) $id=$_GET['id'];
	if(isset($_GET['invoice'])) $c=$_GET['invoice'];
	if(isset($_GET['dle'])) $sdsd=$_GET['dle'];
	if(isset($_GET['qty'])) $qty=$_GET['qty'];
	if(isset($_GET['code']))$wapak=$_GET['code'];

	//edit qty
	$sql = "UPDATE products 
			SET qty=qty-?
			WHERE product_code=?";
	$q = $db->prepare($sql);
	$q->execute(array($qty,$wapak));

	$result = $db->prepare("DELETE FROM purchases_item WHERE id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
	header("location: purchasesportal.php?iv=$c");
?>