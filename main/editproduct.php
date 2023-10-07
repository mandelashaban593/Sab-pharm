<?php
	require '../conn2.php';
	if(isset($_GET['id'])) $product_id=$_GET['id'];

	$result = $db->prepare("SELECT * FROM  products WHERE product_id = :product_id");
	$result->bindParam(':product_id', $product_id);
	$result->execute();

for($i=0; $row = $result->fetch(); $i++) {
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditproduct.php" method="post">
<center><h4><i class="icon-edit icon-large"></i> Edit Product</h4></center>
<hr>
<div id="ac">
<input type="hidden" name="memi" value="<?php echo $id; ?>" />
<span>Medicine Name : </span><input type="text" style="width:265px; height:30px;"  name="med_name" value="<?php echo $row['med_name']; ?>" Required/><br>
<span>Category : </span><input type="text" style="width:265px; height:30px;"  name="category" value="<?php echo $row['category']; ?>" /><br>


<table><tr>
<td><span>Quantity<br>(optional):</span></td>
<td><input type="number" style="width:100px; height:30px;" name="quantity" value="<?php echo $row['quantity']; ?>" >
<select style="width:165px; height:30px; border-color: #000080" name="sell_type" value="<?php echo $row['sell_type']; ?>"> 
<option value="Bot">Bot</option>
<option value="Stp">Stp</option>
<option value="Tab">Tab</option>
<option value="Sachet">Sachet</option>	
<option value="Unit">Unit</option>
<option value="Tube">Tube</option>
</select></td></tr></table>



<span>Date: </span><input type="date"   style="width:265px; height:30px;" name="reg_date" id="reg_date"  value="<?php echo $row['reg_date']; ?>" Required/><br>


<span>Expired Date (optional):  </span><input type="date"   style="width:265px; height:30px;" name="exp_date" id="exp_date"  value="<?php echo $row['expiry_date']; ?>"/><br>

<span> </span><input type="hidden" style="width:265px; height:30px;" name="del_no"  value="D876" Required/><br>
<span></span><input type="hidden" style="width:265px; height:30px;" name="date_arrival" value="<?php echo date ('M-d-Y'); ?>"  /><br>

<span>Selling Rate : </span><input type="text" id="txt1" style="width:265px; height:30px;" name="price" onkeyup="sum();" value="<?php echo $row['price']; ?>"  Required><br>
<span> </span><input type="hidden" id="txt2" style="width:265px; height:30px;" name="o_price" onkeyup="sum();"   value="<?php echo $row['o_price']; ?>" Required><br>
<span></span><input type="hidden" id="txt3" style="width:265px; height:30px;" name="profit" value="<?php echo $row['profit']; ?>" readonly><br>
<span>Supplier : </span>
<select name="supplier" style="width:265px; height:30px; margin-left:-5px;" >
	<option value="<?php echo $row['supplier']; ?>"><?php echo $row['supplier']; ?></option>
	<?php
	$result = $db->prepare("SELECT * FROM supliers");
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['suplier_name']; ?>"><?php echo $row['suplier_name']; ?></option>
	<?php
	}
	?>
</select><br>
<span></span><input type="hidden" style="width:265px; height:30px;" min="0" name="qty_left" value="<?php if(!$row['qty_left'] ) {echo $row['quantity']; } else {echo $row['quantity']-$row['qty_sold'];  } ?>" /><br>

<div style="float:right; margin-right:10px;">

<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save Changes</button>
</div>
</div>
</form>
<?php
}
?>

