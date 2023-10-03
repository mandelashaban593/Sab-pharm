<?php
// configuration
require '../conn2.php';
// new data


if(isset($_POST['memi'])) $product_id = $_POST['memi'];
if(isset($_POST['status']))  $status = $_POST['status'];

$resulta = $db->prepare("SELECT * FROM supplies  WHERE product_id= :product_id");
$resulta->bindParam(':product_id', $product_id);
$resulta->execute();
for($i=0; $row = $resulta->fetch(); $i++){
	$quantity_order = $row['quantity_ordered'];
	$product_id = $row['product_id'];
	$med_name= $row['med_name'];
	$category = $row['category'];
	$qty= $row['qty'];
	$sell_type = $row['sell_type'];
	$reg_date = $row['reg_date'];
	$exp_date= $row['exp_date']; 
	$sell_price = $row['price'];
	$supplier = $row['supplier'];
	$o_price = $row['o_price'];
	$profit  =$row['profit'];
	$date_arrival = $row['date_arrival'];
	$del_no = $row['del_no'];
	$tot_order_price = $row['cost'];

	echo "Quantity ordered<br/>";
	echo $quantity_order;
	$qty_left=$row['qty_left'];


}



$q = mysqli_query($con, "SELECT * FROM  products WHERE product_name ='$med_name' ") or die(mysqli_error($con));
$rowcount=mysqli_num_rows($q);

echo $rowcount;
if($rowcount==1){

echo "Product exists, so update<br/>";
$resultb = $db->prepare("SELECT * FROM products  WHERE product_name= :product_name");
$resultb->bindParam(':product_name', $med_name);
$resultb->execute();
for($i=0; $row = $resultb->fetch(); $i++){
	$qty_left=$row['qty_left']+$qty;
	echo "Quantity<br/>";
	echo $qty_left;
	//Update store data status
	// query
	$sql = "UPDATE products
	        SET status=?
			WHERE product_id=?";
	$q = $db->prepare($sql);
	$q->execute(array($status,$row['product_id']));

	// Update available quantity query
	$sql = "UPDATE supplies
	        SET status=?,qty_left=?
			WHERE product_id=?";
	$q = $db->prepare($sql);
	$q->execute(array($status,$qty_left,$product_id));

	header("location: supplies.php");



}


}


if($rowcount==0){

	$onhand_qty=0;
	$qty_sold=0;
	$expiry_date='';
	$order_id='';

	echo "Status<br/>";
	echo $status;
	
	// query
$sql = "INSERT INTO products (product_id,med_name,product_code,gen_name,product_name,category,qty,onhand_qty,qty_sold,sell_type,reg_date,exp_date,price,supplier,o_price,cost,profit,date_arrival,del_no,tot_buy,status,qty_left,expiry_date,quantity_ordered) VALUES ('$product_id','$med_name','$med_name','$med_name','$med_name','$category','$qty','$onhand_qty','$qty_sold','$sell_type','$reg_date','$exp_date','$sell_price','$supplier','$o_price','$o_price','$profit','$date_arrival','$del_no','$tot_order_price','$status','$qty_left','$expiry_date','$qty')";
$q = mysqli_query($con, $sql) or die(mysqli_error($con));
header("location: supplies.php");

}




?>