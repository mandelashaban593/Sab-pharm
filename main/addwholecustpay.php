<?php
	require_once('auth.php');
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="savewholecustpay.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Add Payment</h4></center>
<hr>
<div id="ac">
<span> </span><input type="hidden" style="width:265px; height:30px;" name="customer_id" value="<?php echo $_SESSION['customer_id']; ?>" required/><br>
<span>Type: </span>
<select name="pay_type" style="width:265px; height:30px;" >
   <option value="cash">Cash</option>
   <option value="bank">Bank</option>
</select><br>
<span>Date. : </span><input type="date" style="width:265px; height:30px;" name="date" /><br>
<span>Amount: </span><input type="number" style="width:265px; height:30px;" name="amount" Required/><br>
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save</button>
</div>
</div>
</form>