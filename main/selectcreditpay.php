<?php 
include('../conn2.php');

?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="redirectsup.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Choose Customer</h4></center>
<hr>
<div style="text-align:left;">
<div id="ac">
<span>Supplier: <br></span>
<select style="width:165px; height:30px; border-color: #000080" name="suplier_id" > 
<option value="">Choose Supplier</option>
	<?php
	$result = $db->prepare("SELECT * FROM supliers");
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
	?>
	<option value="<?php echo $row['suplier_id']; ?>"><?php echo $row['suplier_name']; ?></option>
	<?php
	}
        ?>
</select><br>
<span>Type: <br></span>
<select style="width:165px; height:30px; border-color: #000080" name="sup_type" > 
<option value="">Choose Type</option>
<option value="wholesale">Whole Sale</option>
<option value="retail">Retail</option>
</select><br>
<span>&nbsp;</span><input id="btn" type="submit" value="save" />
</div>
</div>
</form>


<!-- 
custpayment.php -->