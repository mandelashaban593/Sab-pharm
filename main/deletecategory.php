<?php
	require '../conn2.php';
	if(isset($_GET['id'])) $id=$_GET['id'];
	$result = $db->prepare("DELETE FROM category WHERE category_id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
?>