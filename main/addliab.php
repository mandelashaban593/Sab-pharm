<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveliab.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Add Liability</h4></center>
<hr>
<div style="text-align:left;">
<div id="ac">
<span>Date: <br></span><input type="date" style="width:265px; height:30px;" name="date" placeholder="MM/DD/YYYY" /><br>
<span>Name: </span><input type="text" style="width:265px; height:30px;" name="name" /><br>
<span>Amount: </span><input type="text" style="width:265px; height:30px;" name="amount" /><br>
<span>Category : </span>
<select name="liab_cat" style="width:265px; height:30px;">
<option value="current">Current Liability</option>
<option value="long">Long term  Liability</option>
<option value="equity">Stock holders Equity</option>
</select><br>
<span>Remarks:<br> </span><input type="text" style="width:265px; height:30px;" name="remarks" /><br>
<span>&nbsp;</span><input id="btn" type="submit" value="save" />
</div>
</div>
</form>