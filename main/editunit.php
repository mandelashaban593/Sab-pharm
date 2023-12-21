<?php
	require '../conn2.php';
	if(isset($_GET['id'])) $unit_id=$_GET['id'];

	$result = $db->prepare("SELECT * FROM  unit WHERE unit_id = :unit_id");
	$result->bindParam(':unit_id', $unit_id);
	$result->execute();

for($i=0; $row = $result->fetch(); $i++) {
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditunit.php" method="post" >
<center><h4><i class="icon-plus-sign icon-large"></i> Edit Unit</h4></center>
<hr>

 <div class="input-container">
<span>Unit: </span><input type="text" id="c" name="unit" style="width:265px; height:30px;" autocomplete="off" value="<?php echo $row['unit']; ?>">

</div>
<br>


<span></span><input type="hidden" id="unit_id" style="width:265px; height:30px;" name="unit_id" value="<?php echo $row['unit_id']; ?>" readonly><br><br>

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
