<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveuser.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Add User</h4></center>
<hr>
<div id="ac">
<span>First Name: </span><input type="text" style="width:265px; height:30px;" name="fname" ><br>
<span>Last Name: </span><input type="text" style="width:265px; height:30px;" name="lname" ><br>
<span>Username: </span><input type="text" style="width:265px; height:30px;" name="username" ><br>
<span>Password: </span><input type="text" style="width:265px; height:30px;" name="password" Required/><br>
<span>Position: </span>
<select name="position"  style="width:265px; height:30px; margin-left:-5px;" >
<option value="None">Select position</option>
<option value="admin">Admin</option>
<option value="store">Store</option>
<option value="pharmacist">Pharmacist</option>
<option value="supplier">Supplier</option>
</select><br>

<span></span><input type="hidden" style="width:265px; height:30px;" name="branch_name" value="Jinja" Required/><br>


<div style="float:right; margin-right:10px;">
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save</button>
</div>
</div>
</form>
