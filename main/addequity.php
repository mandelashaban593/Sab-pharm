<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveequity.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Add Equity</h4></center>
<hr>
<div id="ac">
<span> Date: </span><input type="date" style="width:265px; height:30px;" name="date" placeholder="MM/DD/YYYY" /><br>
<span>Stakeholder Name:</span><input type="text" style="width:265px; height:30px;" name="name" /><br>

<span>Amount: </span><input type="text"   style="width:265px; height:30px;" name="amount" id="amount"  Required/><br>


<span>Remarks: </span><input type="text" style="width:265px; height:30px;" name="remarks" /><br>

<!-- <span>Gross Quantity : </span><input type="number" style="width:265px; height:30px;" min="0" id="txt11" onkeyup="sum();" name="qty" Required ><br> -->
<!-- <span></span><input type="hidden" style="width:265px; height:30px;" id="txt22" name="qty_sold" Required ><br> -->
<div style="float:right; margin-right:10px;">
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save</button>
</div>
</div>
</form>





