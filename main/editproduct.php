<?php
	require '../conn2.php';
	if(isset($_GET['id'])) $product_id=$_GET['id'];

	$result = $db->prepare("SELECT * FROM  products WHERE product_id = :product_id");
	$result->bindParam(':product_id', $product_id);
	$result->execute();

for($i=0; $row = $result->fetch(); $i++) {
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditproduct.php" method="post" >
<center><h4><i class="icon-plus-sign icon-large"></i> Edit Item</h4></center>
<hr>

 <div class="input-container">
<span>Name : </span><input type="text" id="med_name" name="med_name" style="width:265px; height:30px;" autocomplete="off" value="<?php echo $row['med_name']; ?>">

<select id="search_results" style="width:265px; height:30px; border-color: #000080"  name="search_results" autocomplete="off">
    <!-- Populate this dropdown with search results using AJAX -->
</select>


</div>
<br>
<span>Inventory : </span><select style="width:165px; height:30px; border-color: #000080" name="inventory" > 
<option value="Consumable">Consumable</option>
<option value="Non Consumable">Non Consumable</option>
</select>
<br/>
<span>Category: </span>
<select style="width:265px; height:30px; border-color: #000080" name="category" id="category" > 
<option value="Anti-spasmotic">Anti-spasmotic</option>
<option value="Antibiotics">Antibiotics</option>
<option value="Antiprotoazol">Antiprotoazol</option>
<option value="Antidiabetics">Antidiabetics</option>	
<option value="Antimalaria">Antimalaria</option>
<option value="Anti-hypertensive">Anti-hypertensive</option>
<option value="Anti-ulcers">Anti-ulcers</option>
<option value="PPI">PPI</option>
<option value="NA">NA</option>
<option value="Anti-Vomitus">Anti-Vomitus</option>
<option value="Painkiller">Painkiller</option>
<option value="Anti-fungal">Anti-fungal</option>
<option value="Multivitamins">Multivitamins</option>
<option value="Vitamins">Vitamins</option>
<option value="Antihemedics">Antihemedics</option>
<option value="Antihaemorhaid">Antihaemorhaid</option>
<option value="Lazatives">Lazatives</option>
<option value="Antimotility">Antimotility</option>
</select>

<br>



<table><tr>
<td><span>Quantity<br>(optional):</span></td>
<td><input type="number" style="width:100px; height:30px;" name="quantity" id="quantity">
<select style="width:165px; height:30px; border-color: #000080" name="sell_type" > 
<option value="Tabs">Tabs</option>
<option value="Syrup">Syrup</option>
<option value="Gell">Gell</option>
<option value="Cream">Cream</option>
<option value="Oitments">Oitments</option>
<option value="Bottles">Bottles</option>
<option value="Gelletins">Gelletins</option>
<option value="Pessories">Pessories</option>
<option value="Capsules">Capsules</option>
<option value="NA">NA</option>
<option value="Ampules">Ampules</option>
<option value="Vials">Vials</option>
<option value="Drops">Drops</option>
<option value="Sprays">Sprays</option>	
<option value="Stp">Stp</option>
<option value="Sachet">Sachet</option>	
<option value="Unit">Unit</option>
<option value="Tube">Tube</option>
</select></td></tr></table>

<span> Batch No (optional):</span><input type="text" style="width:265px; height:30px;" name="batch_no"  id="batch_no" value="<?php echo $row['batch_no']; ?>"/><br>
<span></span><input type="hidden"   style="width:265px; height:30px;" name="reg_date" id="reg_date"  value="<?php echo date ('M-d-Y'); ?>" /><br>


<span>Expired Date (optional): </span><input type="date"   style="width:260px; height:30px;" name="exp_date" id="exp_date" value="<?php echo $row['expiry_date']; ?>" /><br>

<span> </span><input type="hidden" style="width:265px; height:30px;" name="del_no"  value="D876" Required/><br>
<span></span><input type="hidden" style="width:265px; height:30px;" name="date_arrival" value="<?php echo date ('M-d-Y'); ?>"  /><br>

<span>Selling Rate : </span><input type="text" id="txt1" style="width:265px; height:30px;" name="price" onkeyup="sum();" value="<?php echo $row['price']; ?>" Required><br>
<span></span><input type="hidden" id="txt2" style="width:265px; height:30px;" name="o_price" value="0"><br>
<span></span><input type="hidden" id="txt3" style="width:265px; height:30px;" name="profit" readonly><br>
<span></span>
<span></span><input type="hidden" id="txt3" style="width:265px; height:30px;" name="supplier" value="None" readonly><br><br>
<span></span><input type="hidden" id="product_id" style="width:265px; height:30px;" name="product_id" value="<?php echo $row['product_id']; ?>" readonly><br><br>

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
