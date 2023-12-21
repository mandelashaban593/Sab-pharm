<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';
	
if(isset($_POST['product_id'])) $product_id = $_POST['product_id'];
if(isset($_POST['med_name'])) $med_name = $_POST['med_name'];
if(isset($_POST['category'])) $category = $_POST['category'];
if(isset($_POST['qty'])) $quantity = (int)$_POST['qty'];
if(isset($_POST['sell_type'])) $sell_type = $_POST['sell_type'];
if(isset($_POST['reg_date'])) $reg_date = date($_POST['reg_date']);
if(isset($_POST['reg_date'])) $new_reg_date = date($_POST['reg_date']);
if(isset($_POST['exp_date'])) $exp_date=  date($_POST['exp_date']); 
if(isset($_POST['exp_date'])) $new_exp_date = date($_POST['exp_date']);
if(isset($_POST['invoice'])) $invoice=  $_POST['invoice']; 
if(isset($_POST['batch_no'])) $batch_no=  $_POST['batch_no']; 
$product_code=$med_name;
$gen_name=$med_name;
$onhand_qty=0;
$qty_sold=0;
if(isset($_POST['price'])) $sell_price = $_POST['price'];
if(isset($_POST['supplier'])) $supplier = $_POST['supplier'];
if(isset($_POST['o_price'])) $o_price = $_POST['o_price'];
if(isset($_POST['profit'])) $profit  = $_POST['profit'];
if(isset($_POST['date_arrival'])) $date_arrival = $_POST['date_arrival'];
if(isset($_POST['del_no'])) $del_no = $_POST['del_no'];
$tot_buy_price = $o_price*$quantity;

echo "<br/>Invoice:";
echo $invoice;
echo "<br/>Batch no:";
echo $batch_no;
echo "<br/>Product id:";
echo $product_id ;
echo "<br/>Quantity Ordered:";
echo $quantity;
echo "<br/>Pay Type:";
echo $pay_type ;
echo "<br/>Date:";
echo $date;
echo "<br/>Discount:";
echo $discount;
echo "<br/>Customer name:";
echo $customer_name;

echo "<br/>Reg date:";
echo $new_reg_date;



$query = mysqli_query($con, "SELECT price,category,med_name,profit,quantity FROM products WHERE product_id= '$product_id'") or die(mysqli_error($con));
$row=mysqli_fetch_array($query);

$price=$row['price'];
$category=$row['category'];
$med_name=$row['med_name'];
$profit=$row['profit'];
$qty_left=$row['quantity'];
$qty_left=$qty_left+$quantity;
/*quantity_ordered*/
echo "<br/>Price:";
echo $price;
echo "<br/>Category:";
echo $category;
echo "<br/>Medicine Name:";
echo $med_name;
echo "<br/>Total profit:";
echo $profit;


$sql = "UPDATE products 
        SET quantity='$qty_left'
		WHERE product_id='$product_id'";
$query2 = mysqli_query($con, $sql) or die(mysqli_error($con));

if($unitprice>50){
$tot_sale_price=$unitprice*$qty;
$sale_price=$unitprice;

}

$tot_profit=$profit*$quantity;

#Retrieve the quantity left 
$query = mysqli_query($con, "SELECT price,category,med_name,profit,quantity FROM products WHERE product_id= '$product_id'") or die(mysqli_error($con));
$row=mysqli_fetch_array($query);

$sql = "INSERT INTO purchase_details (med_name,category,quantity,sell_type,reg_date,exp_date,price,supplier,o_price,profit,date_arrival,del_no,tot_buy,status,product_code,gen_name,product_name, cost,onhand_qty,qty,qty_sold,expiry_date,invoice,batch_no) VALUES ('$med_name','$category','$quantity','$sell_type','$new_reg_date','$new_exp_date','$sell_price','$supplier','$o_price','$profit','$date_arrival','$del_no','$tot_buy_price','$status','$product_code', '$gen_name', '$gen_name', '$o_price','$onhand_qty','$quantity','$qty_sold', '$new_exp_date', '$invoice', '$batch_no')";
$q = mysqli_query($con, $sql) or die(mysqli_error($con));
if($q){
	echo "WORKED";
}

$sql=mysqli_query($con,'select * from purchase_details
    order by product_id desc
  	limit 1');
$row = mysqli_fetch_assoc($sql);
$transaction_id = $row['product_id'];
/*echo "\ntransaction_id:";
echo $transaction_id;*/

header("location: medorders2.php?pay_type=$pay_type&invoice=$invoice&customer_name=$supplier&date=$reg_date");



?>