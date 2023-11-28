<?php
	require '../conn2.php';
	if(isset($_GET['id'])) $id=$_GET['id'];
	$result = $db->prepare("SELECT * FROM  employee  WHERE emp_id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditemployee.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Edit Employee</h4></center>
<hr>
<div id="ac">
<input type="hidden" name="memi" value="<?php echo $id; ?>" />
<span>First Name: </span><input type="text" style="width:265px; height:30px;" name="fname"  value="<?php echo $row['fname']; ?>" ><br>
<span>Last Name: </span><input type="text" style="width:265px; height:30px;" name="lname"  value="<?php echo $row['lname']; ?>" ><br>
<span>Username: </span><input type="text" style="width:265px; height:30px;" name="username"  value="<?php echo $row['username']; ?>" ><br>
<span>Gender </span><input type="text" style="width:265px; height:30px;" name="gender"  value="<?php echo $row['gender']; ?>" ><br>
<span>Employee Type: </span>
<select name="emp_type"  style="width:265px; height:30px; margin-left:-5px;" >
<option value="<?php echo $row['emp_type']; ?>"><?php echo $row['emp_type']; ?></option>
<option value="Regular">Regular</option>
<option value="Job Order">Job Order</option>
<option value="Casual">Casual</option>
</select><br>
<span>Job title: </span><input type="text" style="width:265px; height:30px;" name="jobtitle"  value="<?php echo $row['jobtitle']; ?>" ><br>
<span>Department: </span><input type="text" style="width:265px; height:30px;" name="department"  value="<?php echo $row['department']; ?>" ><br>
<span>Higest Education: </span><input type="text" style="width:265px; height:30px;" name="higheduc"  value="<?php echo $row['higheduc']; ?>" ><br>
<span>Salary: </span><input type="number" style="width:265px; height:30px;" name="sal"  value="<?php echo $row['sal']; ?>" ><br>
<span>Tin Number: </span><input type="text" style="width:265px; height:30px;" name="tin"  value="<?php echo $row['tin']; ?>" ><br>
<span>Housing Allowance: </span><input type="text" style="width:265px; height:30px;" name="hallowance"  value="<?php echo $row['hallowance']; ?>" ><br>
<span>Transport Allowance: </span><input type="text" style="width:265px; height:30px;" name="transpallowance"  value="<?php echo $row['transpallowance']; ?>" ><br>

<div style="float:right; margin-right:10px;">
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save</button>
</div>
</div>
</form>
<?php
}
?>


