<?php
	require '../conn2.php';
	if(isset($_GET['id'])) $id=$_GET['id'];
	$result = $db->prepare("SELECT * FROM  user  WHERE id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveedituser.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Edit User</h4></center>
<hr>
<div id="ac">
<input type="hidden" name="memi" value="<?php echo $id; ?>" />
<span>First Name: </span><input type="text" style="width:265px; height:30px;" name="fname"  value="<?php echo $row['fname']; ?>" ><br>
<span>Last Name: </span><input type="text" style="width:265px; height:30px;" name="lname"  value="<?php echo $row['lname']; ?>" ><br>
<span>Username: </span><input type="text" style="width:265px; height:30px;" name="username"  value="<?php echo $row['username']; ?>" ><br>
<span>Password: </span><input type="password" style="width:265px; height:30px;" name="password"  value="<?php echo $row['password']; ?>" /><br>
<span>Position: </span>
<select name="position"  style="width:265px; height:30px; margin-left:-5px;" >
<option value="<?php echo $row['position']; ?>"><?php echo $row['position']; ?></option>
<option value="admin">Admin</option>
<option value="store">Store</option>
<option value="pharmacist">Pharmacist</option>
<option value="supplier">Supplier</option>	

</select><br>

<div style="float:right; margin-right:10px;">
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save</button>
</div>
</div>
</form>
<?php
}
?>


