<?php
	require '../conn2.php';
	if(isset($_GET['id'])) $id=$_GET['id'];
	$result = $db->prepare("SELECT * FROM supliers WHERE suplier_id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditsupplier.php" method="post">
<center><h4><i class="icon-edit icon-large"></i> Edit Supplier</h4></center><hr>
<div id="ac">
<input type="hidden" name="memi" value="<?php echo $id; ?>" />
<span>Supplier Name: </span><input type="text" style="width:265px; height:30px;" name="name" required value="<?php echo $row['suplier_name']; ?>"/><br>
<span>Contact Person: </span><input type="text" style="width:265px; height:30px;" name="contact_person" required value="<?php echo $row['contact_person']; ?>"/><br>
<span>Contact No. : </span><input type="text" style="width:265px; height:30px;" name="suplier_contact" value="<?php echo $row['suplier_contact']; ?>"/><br>
<span>Location: </span><input type="text" style="width:265px; height:30px;" name="location" Required value="<?php echo $row['location']; ?>"/><br>
<span>Address : </span><input type="text" style="width:265px; height:30px;" name="suplier_address" value="<?php echo $row['suplier_address']; ?>"/><br>

<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save Changes</button>
</div>
</div>
</form>
<?php
}
?>

