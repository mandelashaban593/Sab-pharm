<?php
	include('../connect.php');
	
	if(isset($_GET['expense_id'])) $id=$_GET['expense_id'];

	$result = $db->prepare("SELECT * FROM expenses WHERE expense_id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>

<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditexpense.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Edit Expenses</h4></center>
<hr>
<div style="text-align:left;">
<div id="ac">
<input type="hidden" name="memi" value="<?php echo $id; ?>" />
<span>Date: <br></span><input type="date" style="width:265px; height:30px;" name="date" placeholder="MM/DD/YYYY" value="<?php echo $row['entry_date']; ?>" /><br>
<span>Item: </span><input type="text" style="width:265px; height:30px;" name="item" value="<?php echo $row['item']; ?>"/><br>
<span>Amount : </span><input type="text" style="width:265px; height:30px;" name="amount" value="<?php echo $row['amount']; ?>"/><br>

<span>Remarks:<br> </span><input type="text" style="width:265px; height:30px;" name="remarks" value="<?php echo $row['remarks']; ?>"/><br>
<span>&nbsp;</span><input id="btn" type="submit" value="save" />
</div>
</div>
</form>

<?php
}
?>

