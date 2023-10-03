<?php
require '../conn2.php';
//Connect to mysql server and selecting db
$status = "Pending";

if(isset($_POST['quantity'])) $quantity_order = $_POST['quantity'];
if(isset($_POST['searchword']))  $med_name = $_POST['searchword'];

$resulta = $db->prepare("SELECT * FROM products  WHERE med_name= :med_name");
$resulta->bindParam(':med_name', $med_name);
$resulta->execute();
for($i=0; $row = $resulta->fetch(); $i++){

$product_id = $row['product_id'];

$category = $row['category'];

$quantity = $row['quantity'];

$sell_type = $row['sell_type'];
$reg_date = $row['reg_date'];
$exp_date= $row['exp_date']; 

$sell_price = $row['price'];
$supplier = $row['supplier'];
$o_price = $row['o_price'];
$profit  =$row['profit'];
$date_arrival = $row['date_arrival'];
$del_no = $row['del_no'];
$qty_left=$row['qty_left'];
if($quantity>=$qty_left){

    if($quantity>$quantity_order){
   $qty_left = $quantity-$quantity_order;
   //moisture content deduction
    $tot_order_price = $o_price*$qty_left; 
}

    }


if($quantity<0){
 header("location: ordermedicines.php");
}


if($quantity<$qty_left){
 header("location: ordermedicines.php");
}

if($quantity<$quantity_order){
 header("location: ordermedicines.php");
}


// Update product quatity after reduction query
$med_name=$row['med_name'];
$category=$row['category'];
$quantity=$row['quantity'];
$sell_type=$row['sell_type'];
$reg_date=$row['reg_date'];
$sell_price=$row['price'];
$supplier=$row['supplier'];
$o_price=$row['o_price'];
$profit=$row['profit'];
$date_arrival=$row['date_arrival'];
$del_no=$row['del_no'];
$tot_buy=$row['tot_buy'];

$sql = "UPDATE products 
        SET med_name=?, category=?, quantity=?, sell_type=?, reg_date=?, exp_date=?, price=?, supplier=?, o_price=?, profit=?, date_arrival=?, del_no=?, qty_left=?, tot_buy=?
        WHERE product_id=?";
$q = $db->prepare($sql);
$q->execute(array($med_name,$category,$qty_left,$sell_type,$reg_date,$exp_date,$sell_price,$supplier,$o_price,$profit,$date_arrival,$del_no,$qty_left,$tot_buy,$product_id));
header("location: products.php");

}


$q = mysqli_query($con, "SELECT * FROM  products WHERE product_id ='$product_id' ") or die(mysqli_error($con));
$rowcount=mysqli_num_rows($q);

echo $rowcount;
/*if($rowcount == 0){*/
echo "GOOD";
$onhand_qty=0;
$qty_sold=0;
$expiry_date='';
$order_id='';
// query
$sql = "INSERT INTO store_orders (product_id,med_name,product_code,gen_name,product_name,category,qty,onhand_qty,qty_sold,sell_type,reg_date,exp_date,price,supplier,o_price,cost,profit,date_arrival,del_no,tot_buy,status,qty_left,expiry_date,quantity_order) VALUES ('$product_id','$med_name','$med_name','$med_name','$med_name','$category','$quantity','$onhand_qty','$qty_sold','$sell_type','$reg_date','$exp_date','$sell_price','$supplier','$o_price','$o_price','$profit','$date_arrival','$del_no','$tot_order_price','$status','$qty_left','$expiry_date','$quantity_order')";
$q = mysqli_query($con, $sql) or die(mysqli_error($con));



/*} 
*/

header("location: ordermedicines.php");


?>