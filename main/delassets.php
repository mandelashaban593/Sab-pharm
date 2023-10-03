<!-- <?php -->
	include('../connect.php');
	
	if(isset($_GET['id'])) $id=$_GET['id'];

	$result = $db->prepare("DELETE FROM assets WHERE transaction_id	= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
?>

