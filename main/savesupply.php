<?php
session_start();
require '../conn2.php';
//Connect to mysql server and selecting db
$status = "Pending";
if(isset($_POST['med_name'])) $med_name = $_POST['med_name'];
if(isset($_POST['category'])) $category = $_POST['category'];
if(isset($_POST['quantity'])) $quantity = $_POST['quantity'];
if(isset($_POST['sell_type'])) $sell_type = $_POST['sell_type'];
if(isset($_POST['reg_date'])) $reg_date = date($_POST['reg_date']);
if(isset($_POST['reg_date'])) $new_reg_date = date($_POST['reg_date']);
if(isset($_POST['exp_date'])) $exp_date=  date($_POST['exp_date']); 
if(isset($_POST['exp_date'])) $new_exp_date = date($_POST['exp_date']);
$product_code=$med_name;
$gen_name=$med_name;
$onhand_qty=0;
$qty=$quantity;
$qty_sold=0;
if(isset($_POST['price'])) $sell_price = $_POST['price'];
if(isset($_POST['supplier'])) $supplier = $_POST['supplier'];
if(isset($_POST['o_price'])) $o_price = $_POST['o_price'];
if(isset($_POST['profit'])) $profit  = $_POST['profit'];
if(isset($_POST['date_arrival'])) $date_arrival = date($_POST['date_arrival']);
if(isset($_POST['del_no'])) $del_no = $_POST['del_no'];
$tot_buy_price = $o_price*$quantity;

echo $a;

echo "\n";
echo $a;

echo "\n";
echo $b;

echo "\n";
echo $c;

echo "\n";

echo $actual_mois;

echo "\n";

$med_name = str_replace(' ', '', "$med_name");

$q = mysqli_query($con, "SELECT * FROM supplies WHERE med_name ='$med_name' ") or die(mysqli_error($con));
$rowcount_prod=mysqli_num_rows($q);

/*purchase_details*/
echo $rowcount_prod;


// query //
$qty_left=0;



$sql = "INSERT INTO supplies (product_code,category,med_name,price,supplier,quantity,o_price,profit,gen_name,product_name,cost,onhand_qty,qty,qty_sold,expiry_date,date_arrival,sell_type,reg_date,tot_buy,del_no,qty_left,status) VALUES (:a,:b,:c,:e,:f,:g,:h,:i,:j,:k,:l,:m,:n,:o,:p,:k,:r,:s,:t,:u,:v,:w)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$med_name,':b'=>$category,':c'=>$med_name,':e'=>$sell_price,':f'=>$supplier,':g'=>$quantity,':h'=>$o_price,':i'=>$profit,':j'=>$gen_name,':k'=>$med_name,':l'=>$o_price,':m'=>$onhand_qty,':n'=>$qty,':o'=>$qty_sold,':p'=>$exp_date,':q'=>$date_arrival,':r'=>$sell_type,':s'=>$reg_date
	,':t'=>$tot_buy,':u'=>$del_no,':v'=>$qty_left,':w'=>$status));
header("location: supplies.php");

/*>14=>24
-product_id	
-product_code		
-gen_name		
product_name		
cost		
-o_price
-price		
-profit		
-supplier	
onhand_qty	
qty		
qty_sold	
expiry_date		
date_arrival		
-med_name		
	
-quantity	
sell_type		
	
reg_date		
	
exp_date	
	
tot_buy	
	
del_no		
	
qty_left	
	
-category		
	
status*/	




/*header("location: products.php");

*/
?>

<!-- Add default value to a column.  ALTER TABLE products  ALTER COLUMN product_name  SET DEFAULT 'None' -->