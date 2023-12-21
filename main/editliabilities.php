<?php
	require '../conn2.php';
	
	if(isset($_GET['transaction_id'])) $id=$_GET['transaction_id'];
	$result = $db->prepare("SELECT * FROM  liabilities WHERE transaction_id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditliab.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Edit Liabilities</h4></center>
<hr>
<div style="text-align:left;">
<div id="ac">
<input type="hidden" name="memi" value="<?php echo $id; ?>" />
<span>Date: <br></span><input type="date" style="width:265px; height:30px;" name="date" placeholder="MM/DD/YYYY" value="<?php echo $row['entry_date']; ?>" /><br>
<span>Name: </span><input type="text" style="width:265px; height:30px;" name="name" value="<?php echo $row['name']; ?>" /><br>
<span>Amount: </span><input type="text" style="width:265px; height:30px;" name="amount" value="<?php echo $row['amount']; ?>" /><br>
<span>Category : </span>
<select name="liab_cat" style="width:265px; height:30px;">
<option value="current">Current Liability</option>
<option value="long">Long term  Liability</option>
<option value="equity">Stock holders Equity</option>
</select><br>
<span>Remarks:<br> </span><input type="text" style="width:265px; height:30px;" name="remarks" value="<?php echo $row['remarks']; ?>" /><br>
<span>&nbsp;</span><input id="btn" type="submit" value="save" />
</div>
</div>
</form>
<?php
}
?>




