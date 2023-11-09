<?php
	require '../conn2.php';
	
	if(isset($_GET['equity_id'])) $id=$_GET['equity_id'];
	$result = $db->prepare("SELECT * FROM equity WHERE equity_id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>

<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditequity.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Edit Equity</h4></center>
<hr>
<div id="ac">
<input type="hidden" name="memi" value="<?php echo $id; ?>" />
<span>Date: <br></span><input type="date" style="width:265px; height:30px;" name="date" placeholder="MM/DD/YYYY" value="<?php echo $row['entry_date']; ?>" /><br>

<span>Stakeholder Name:</span><input type="text" style="width:265px; height:30px;" name="name" value="<?php echo $row['name']; ?>"  /><br>

<span>Amount: </span><input type="text"   style="width:265px; height:30px;" name="amount" id="amount" value="<?php echo $row['amount']; ?>"   Required/><br>


<span>Remarks: </span><input type="text" style="width:265px; height:30px;" name="remarks" value="<?php echo $row['remarks']; ?>"  /><br>

<!-- <span>Gross Quantity : </span><input type="number" style="width:265px; height:30px;" min="0" id="txt11" onkeyup="sum();" name="qty" Required ><br> -->
<!-- <span></span><input type="hidden" style="width:265px; height:30px;" id="txt22" name="qty_sold" Required ><br> -->
<div style="float:right; margin-right:10px;">
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save</button>
</div>
</div>
</form>
<?php
}
?>



