<?php
session_start();
require '../conn2.php';
//Connect to mysql server and selecting db
$status = "Approved";
$med_name="";
$quantity=0;

if(isset($_POST['med_name'])) $med_name = $_POST['med_name'];
if(isset($_POST['category'])) $category = $_POST['category'];
if(isset($_POST['quantity'])){ $quantity = $_POST['quantity']; } else { $quantity=0; };
if(isset($_POST['sell_type'])) $sell_type = $_POST['sell_type'];
if(isset($_POST['reg_date'])) $reg_date = date($_POST['reg_date']);
if(isset($_POST['reg_date'])) $new_reg_date = date($_POST['reg_date']);
if(isset($_POST['exp_date'])){ $exp_date=  date($_POST['exp_date']); } else { $exp_date=''; }; 
if(isset($_POST['exp_date'])) $new_exp_date = date($_POST['exp_date']);
$product_code=$med_name;
$gen_name=$med_name;
$onhand_qty=0;
$qty=$quantity;
$qty_sold=0;
if(isset($_POST['price'])) $sell_price = $_POST['price'];
if(isset($_POST['supplier'])) $supplier = $_POST['supplier'];
if(isset($_POST['o_price'])) { $o_price = $_POST['o_price']; } else { $o_price =0; }; 
if(isset($_POST['profit'])) $profit  = $_POST['profit'];
if(isset($_POST['date_arrival'])) $date_arrival = $_POST['date_arrival'];
if(isset($_POST['del_no'])) $del_no = $_POST['del_no'];
$tot_buy_price = (int)$o_price*(int)$quantity;
$qty = empty($qty) ? 0 : $qty;


$med_name = str_replace(' ', '', "$med_name");

$q = mysqli_query($con, "SELECT * FROM products WHERE med_name ='$med_name' ") or die(mysqli_error($con));
$rowcount_prod=mysqli_num_rows($q);


/*purchase_details*/

echo $rowcount_prod;
if($rowcount_prod == 1){

/*$q = mysqli_query($con, "SELECT * FROM products WHERE product_name ='$med_name' ") or die(mysqli_error($con));
$row = mysqli_fetch_assoc($q);*/


$result = $db->prepare("SELECT * FROM products WHERE med_name= :product_name");
$result->bindParam(':product_name', $med_name);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$qty=(int)$row['quantity'];
$product_id=$row['product_id'];
$qty = empty($qty) ? 0 : $qty;
echo $product_id;
echo "Quantity 1\n";
echo $qty;
echo "Quantity 2\n";
echo $quantity;
echo "\n";
echo "Total 2\n";
$tot=(int)$qty+(int)$quantity;

echo $tot;

echo "\n";

}


/*$qty =$row['qty'];
$product_id=$row['product_id'];
echo "Product id \n";
echo $product_id;
echo "Quantity 1\n";
echo $qty;
echo "Quantity 2\n";
echo $quantity;
echo "\n";
echo "Total 2\n";
$qty=$qty+$quantity;

echo $qty;

echo "\n";
*/


/*
$sql = "UPDATE customer SET name='Lucas', age='42', email='newmail@xyz.com' WHERE id=3";
mysqli_query($conn, $sql)
*/

$sql = "UPDATE products 
        SET quantity=?
		WHERE product_id=?";
$q = $db->prepare($sql);
$q->execute(array($tot,$product_id));




}	else{


echo "GOOOOD";
// query
	//
$qty_left=0;
$qty_left = (int)$qty_left;
$qty = empty($qty) ? 0 : $qty;

echo "<br/>Medicine Name: ";
echo $med_name;
echo "<br/>Category: \n";
echo $category;
echo "<br/>Quantity: ";
echo $qty;
echo "<br/>Sell type: ";
echo $sell_type;
echo "<br/>Registration Date: ";
echo $reg_date;
echo "<br/>Expiry Date: ";
echo $exp_date;
echo "<br/>Selling Price: ";
echo $sell_price;
echo "<br/>Supplier: ";
echo $supplier;
echo "<br/>Original Price: ";
echo $o_price;
echo "<br/>profit: ";
echo $profit;
echo "<br/>Date arrival: ";
echo $date_arrival;
echo "<br/>Delivery Number: ";
echo $del_no;
echo "<br/>Total Buying price: ";
echo $tot_buy_price;
echo "<br/>Status: ";
echo $status;
echo "<br/>Product code: ";
echo $product_code;
echo "<br/>General Name: ";
echo $gen_name;
echo "<br/>Original Price: ";
echo $o_price;
echo "<br/>On hand quantity: ";
echo $onhand_qty;
echo "<br/>Quantity: ";
echo $qty;
echo "<br/>Quantity sold: ";
echo $qty_sold;
echo "<br/>Expiry date: ";
echo $exp_date;
/*$sql = "INSERT INTO products (med_name,category,quantity,sell_type,reg_date,exp_date,price,supplier,o_price,profit,date_arrival,del_no,tot_buy,status, qty_left,product_code,gen_name,product_name, cost,onhand_qty,qty,qty_sold,expiry_date) VALUES ('$med_name','$category','$quantity','$sell_type','$new_reg_date','$new_exp_date','$sell_price','$supplier','$o_price','$profit','$date_arrival','$del_no','$tot_buy_price','$status', '$quantity', '$product_code', '$gen_name', '$gen_name', '$o_price','$onhand_qty','$quantity','$qty_sold', '$new_exp_date')";
$q = mysqli_query($con, $sql) or die(mysqli_error($con));*/


$sql = "INSERT INTO products (product_code,category,med_name,price,supplier,quantity,o_price,profit,gen_name,product_name,cost,onhand_qty,qty,qty_sold,expiry_date,date_arrival,sell_type,reg_date,tot_buy,del_no,qty_left,status) VALUES (:a,:b,:c,:e,:f,:g,:h,:i,:j,:k,:l,:m,:n,:o,:p,:k,:r,:s,:t,:u,:v,:w)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$med_name,':b'=>$category,':c'=>$med_name,':e'=>$sell_price,':f'=>$supplier,':g'=>$quantity,':h'=>$o_price,':i'=>$profit,':j'=>$gen_name,':k'=>$med_name,':l'=>$o_price,':m'=>$onhand_qty,':n'=>$qty,':o'=>$qty_sold,':p'=>$exp_date,':q'=>$date_arrival,':r'=>$sell_type,':s'=>$reg_date
	,':t'=>$tot_buy_price,':u'=>$del_no,':v'=>$qty_left,':w'=>$status));

}

header("location: products.php");


?>

<!-- Add default value to a column.  ALTER TABLE products  ALTER COLUMN product_name  SET DEFAULT 'None' -->