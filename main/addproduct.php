<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveproduct.php" method="post" >
<center><h4><i class="icon-plus-sign icon-large"></i> Add Medicine</h4></center>
<hr>
<div id="ac">
<span>Medicine Name : </span><input type="text" style="width:265px; height:30px;"  id="med_name" name="med_name" ><br>
<span>Category: </span><input type="text" style="width:265px; height:30px;" name="category" id="category" Required/><br>


<table><tr>
<td><span>Quantity<br>(optional):</span></td>
<td><input type="number" style="width:100px; height:30px;" name="quantity">
<select style="width:165px; height:30px; border-color: #000080" name="sell_type" > 
<option value="Bot">Bot</option>
<option value="Stp">Stp</option>
<option value="Tab">Tab</option>
<option value="Sachet">Sachet</option>	
<option value="Unit">Unit</option>
<option value="Tube">Tube</option>
</select></td></tr></table>

<span>Date: </span><input type="date"   style="width:265px; height:30px;" name="reg_date" id="reg_date"  Required/><br>


<span>Expired Date (optional): </span><input type="date"   style="width:260px; height:30px;" name="exp_date" id="exp_date"  /><br>

<span> </span><input type="hidden" style="width:265px; height:30px;" name="del_no"  value="D876" Required/><br>
<span></span><input type="hidden" style="width:265px; height:30px;" name="date_arrival" value="<?php echo date ('M-d-Y'); ?>"  /><br>

<span>Selling Rate : </span><input type="text" id="txt1" style="width:265px; height:30px;" name="price" onkeyup="sum();" Required><br>
<span></span><input type="hidden" id="txt2" style="width:265px; height:30px;" name="o_price" value="0"><br>
<span></span><input type="hidden" id="txt3" style="width:265px; height:30px;" name="profit" readonly><br>
<span></span>
<span></span><input type="hidden" id="txt3" style="width:265px; height:30px;" name="supplier" value="None" readonly><br><br>



<!-- <span>Gross Quantity : </span><input type="number" style="width:265px; height:30px;" min="0" id="txt11" onkeyup="sum();" name="qty" Required ><br> -->
<!-- <span></span><input type="hidden" style="width:265px; height:30px;" id="txt22" name="qty_sold" Required ><br> -->
<div style="float:right; margin-right:10px;">
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save</button>
</div>
</div>
</form>




