<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';
	

if(isset($_POST['invoice'])) $invoice = $_POST['invoice'];
if(isset($_POST['qty'])) $qty = $_POST['qty'];
if(isset($_POST['pay_type'])) $pay_type = $_POST['pay_type'];
if(isset($_POST['date'])) $date = $_POST['date'];
if(isset($_POST['discount'])) $discount = $_POST['discount'];
if(isset($_POST['customer_name'])) $customer_name = $_POST['customer_name'];
if(isset($_POST['unitprice'])) $unitprice = $_POST['unitprice'];
if(isset($_POST['product_id'])) $product_id = $_POST['product_id'];

echo "<br/>Invoice:";
echo $invoice ;
echo "<br/>Product id:";
echo $product_id ;
echo "<br/>Quantity Ordered:";
echo $qty;
echo "<br/>Pay Type:";
echo $pay_type ;
echo "<br/>Date:";
echo $date;
echo "<br/>Discount:";
echo $discount;
echo "<br/>Customer name:";
echo $customer_name;

$query = mysqli_query($con, "SELECT price,category,med_name,profit,quantity FROM products WHERE product_id= '$product_id'") or die(mysqli_error($con));
$row=mysqli_fetch_array($query);
$numRows = mysqli_num_rows($row);


$price=$row['price'];
$category=$row['category'];
$med_name=$row['med_name'];
$profit=$row['profit'];
$qty_left=$row['quantity'];
$qty_left=$qty_left-$qty;
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

$sale_price=$price;
$tot_sale_price=$sale_price*$qty;

if($unitprice > 50){	

$tot_sale_price=$unitprice*$qty;
$sale_price=$unitprice;

}

$tot_profit=$profit*$qty;

echo "<br/>Sales price:";
echo $sale_price;
echo "<br/>Total price:";
echo $tot_sale_price;
echo "<br/>Total price:";
echo $tot_profit;

// query




#Retrieve the quantity left 
$query = mysqli_query($con, "SELECT price,category,med_name,profit,quantity FROM products WHERE product_id= '$product_id'") or die(mysqli_error($con));
$row=mysqli_fetch_array($query);
$qty_left=$row['quantity']; //Quantity of product left

//edit qty
if($qty_left > $qty){


$sql = "INSERT INTO sales_order (invoice,med_name,qty,amount,category, price,profit,sales_date,discount,customer_name) VALUES ('$invoice','$med_name','$qty','$tot_sale_price','$category','$sale_price','$tot_profit',curdate(),0.0, '$customer_name')";
$q = mysqli_query($con, $sql) or die(mysqli_error($con));

$sql=mysqli_query($con,'select * from sales_order
    order by transaction_id desc
  	limit 1');

$row = mysqli_fetch_assoc($sql);
$transaction_id = $row['transaction_id'];
/*echo "\ntransaction_id: ";
echo $transaction_id;
*/
header("location: sales.php?pay_type=$pay_type&invoice=$invoice&profit=$tot_profit&qty=$qty&customer_name=$customer_name&transaction_id=$transaction_id&date=$date&sale_price=$sale_price");

} else {
	?>
	
	
	<?php
	$qtygreat = "Quantity requested is more than the available Quantity";
	header("location: sales.php?pay_type=$pay_type&invoice=$invoice&error=$qtygreat&customer_name=$customer_name&transaction_id=$transaction_id&profit=$tot_profit&date=$date&sale_price=$sale_price");
	

}








?>