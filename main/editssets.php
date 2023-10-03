<?php
	include('../connect.php');
	if(isset($_GET['transaction_id'])) $id=$_GET['transaction_id'];
	$result = $db->prepare("SELECT * FROM assets  WHERE transaction_id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditassets.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Edit Assets</h4></center>
<hr>
<div style="text-align:left;">
<div id="ac">
<input type="hidden" name="memi" value="<?php echo $id; ?>" />
<span>Date: <br></span><input type="date" style="width:265px; height:30px;" name="date" placeholder="MM/DD/YYYY" value="<?php echo $row['entry_date']; ?>" /><br>
<span>Name: </span><input type="text" style="width:265px; height:30px;" name="name" value="<?php echo $row['name']; ?>" /><br>
<span>Amount: </span><input type="text" style="width:265px; height:30px;" name="amount" value="<?php echo $row['amount']; ?>" /><br>
<span>Seller : </span>
<input type="text" style="width:265px; height:30px;" name="supplier" value="<?php echo $row['supplier']; ?>" /><br>
<span>Category : </span>
<select name="asset_cat" style="width:265px; height:30px;">

<option value="current">Current assets</option>
<option value="long">Long term  assets</option>
<option value="other">Other assets</option>
	
</select><br>

<span>Remarks:</span><input type="text" style="width:265px; height:30px;" name="remarks"  value="<?php echo $row['remarks']; ?>" /><br>
<span>&nbsp;</span><input id="btn" type="submit" value="save" />
</div>
</div>
</form>
<?php
}
?>


