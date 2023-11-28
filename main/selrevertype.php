<?php 
include('../conn2.php');

?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="redirectrevers.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Choose Reversal</h4></center>
<hr>
<div style="text-align:left;">
<div id="ac">
<span>Type: <br></span>
<select style="width:165px; height:30px; border-color: #000080" name="rev_type" > 
<option value="">Choose Type</option>
<option value="purchase">Purchase</option>
<option value="wholesale">Whole Sale</option>
<option value="retail">Retail Sale</option>
<option value="wholesalereturn">Whole Sale Return</option>
<option value="retailreturn">Retail Sale Return</option>
<option value="payment">Payment</option>
<option value="receipt">Receipt</option>
</select><br>
<span>&nbsp;</span><input id="btn" type="submit" value="save" />
</div>
</div>
</form>


<!-- 
custpayment.php -->