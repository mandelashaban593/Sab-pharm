<?php
	require '../conn2.php';
	if(isset($_GET['id'])) $category_id=$_GET['id'];

	$result = $db->prepare("SELECT * FROM  wcategory WHERE category_id = :category_id");
	$result->bindParam(':category_id', $category_id);
	$result->execute();

for($i=0; $row = $result->fetch(); $i++) {
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditwcat.php" method="post" >
<center><h4><i class="icon-plus-sign icon-large"></i> Edit Category</h4></center>
<hr>

 <div class="input-container">
<span>Category : </span><input type="text" id="cat" name="cat" style="width:265px; height:30px;" autocomplete="off" value="<?php echo $row['cat']; ?>">

</div>
<br>


<span></span><input type="hidden" id="category_id" style="width:265px; height:30px;" name="category_id" value="<?php echo $row['category_id']; ?>" readonly><br><br>

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
