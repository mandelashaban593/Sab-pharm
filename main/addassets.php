<?php 
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveassets.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Add Assets</h4></center>
<hr>
<div style="text-align:left;">
<div id="ac">
<span>Date: <br></span><input type="date" style="width:265px; height:30px;" name="date" placeholder="MM/DD/YYYY" /><br>
<span>Name: </span><input type="text" style="width:265px; height:30px;" name="name" /><br>
<span>Amount: </span><input type="text" style="width:265px; height:30px;" name="amount" /><br>
<span>Seller : </span>
<input type="text" style="width:265px; height:30px;" name="supplier" /><br>
<span>Category : </span>
<select name="asset_cat" style="width:265px; height:30px;">

<option value="current">Current assets</option>
<option value="long">Long term  assets</option>
<option value="other">Other assets</option>
	
</select><br>

<span>Remarks:</span><input type="text" style="width:265px; height:30px;" name="remarks" /><br>
<span>&nbsp;</span><input id="btn" type="submit" value="save" />
</div>
</div>
</form>