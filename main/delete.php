<?php
	require '../conn2.php';


	if(isset($_GET['id'])) $id=$_GET['id'];
	if(isset($_GET['invoice'])) $c=$_GET['invoice'];
	if(isset($_GET['dle'])) $sdsd=$_GET['dle'];
	if(isset($_GET['qty'])) $qty=$_GET['qty'];
	if(isset($_GET['code']))$wapak=$_GET['code'];
	//edit qty
	$sql = "UPDATE products 
			SET qty=qty+?
			WHERE product_id=?";
	$q = $db->prepare($sql);
	$q->execute(array($qty,$wapak));

	$result = $db->prepare("DELETE FROM sales_order WHERE transaction_id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
	header("location: sales.php?id=$sdsd&invoice=$c");
?>