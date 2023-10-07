<?php
// configuration
require '../conn2.php';

// new data

if(isset($_POST['memi'])) $id = $_POST['memi'];
if(isset($_POST['med_name'])) $med_name = $_POST['med_name'];
if(isset($_POST['category'])) $category = $_POST['category'];
if(isset($_POST['quantity'])) $quantity = $_POST['quantity'];
$quantity = empty($quantity) ? 0 : $quantity;
if(isset($_POST['sell_type'])) $sell_type = $_POST['sell_type'];
$sell_type = empty($sell_type) ? '' : $sell_type;
if(isset($_POST['reg_date'])) $reg_date = date($_POST['reg_date']);
$reg_date = empty($reg_date) ? '' : $reg_date;
if(isset($_POST['reg_date'])) $new_reg_date = date($_POST['reg_date']);
if(isset($_POST['exp_date'])) $exp_date=  date($_POST['exp_date']); 
$exp_date = empty($exp_date) ? '' : $exp_date;
if(isset($_POST['price'])) $sell_price = $_POST['price'];
$sell_price= empty($sell_price) ? 0 : $sell_price;
if(isset($_POST['supplier'])) $supplier = $_POST['supplier'];
$supplier= empty($supplier) ? '' : $supplier;
if(isset($_POST['o_price'])) $o_price = $_POST['o_price'];
$o_price = empty($o_price) ? 0 : $o_price;
if(isset($_POST['profit'])) $profit  = $_POST['profit'];
$profit = empty( $profit) ? 0 : $profit;
if(isset($_POST['date_arrival'])) $date_arrival = date($_POST['date_arrival']);
$date_arrival = empty( $date_arrival) ? '' : $date_arrival;
if(isset($_POST['del_no'])) $del_no = $_POST['del_no'];
$del_no = empty( $del_no) ? '' : $del_no;
if(isset($_POST['qty_left'])) $qty_left = $_POST['qty_left'];
$qty_left = empty( $qty_left) ? 0 : $qty_left;
$tot_buy_price = (int)$o_price*(int)$quantity;


echo "<br/>Product id: ";
echo $id;
echo "<br/>Medicine Name: ";
echo $med_name;
echo "<br/>Category: ";
echo $category;
echo "<br/>Quantity: ";
echo $quantity;
echo "<br/>Selling type: ";
echo $sell_type;
echo "<br/>Date: ";
echo $reg_date;
echo "<br/>Expiry Date: ";
echo $exp_date;
echo "<br/>Price: ";
echo $sell_price;
echo "<br/>Supplier: ";
echo $supplier;
echo "<br/>Original Price: ";
echo $o_price;
echo "<br/>Profit: ";
echo $profit;
echo "<br/>Date of Arrival: ";
echo $date_arrival;
echo "<br/>Delivery Note: ";
echo $del_no;
echo "<br/>Quanity letf: ";
echo $qty_left;





  
    // Prepare and execute the UPDATE query
    $stmt = $db->prepare("UPDATE products SET med_name = :med_name, category = :category, quantity = :quantity,reg_date=:reg_date WHERE product_id = :product_id");
    
    $stmt->bindParam(':med_name', $med_name);
    $stmt->bindParam(':category', $category);
    $stmt->bindParam(':quantity', $quantity);
    $stmt->bindParam(':reg_date', $reg_date);
    $stmt->bindParam(':product_id', $id);
    // Execute the query
    $stmt->execute();
    if($stmt){
        echo "product OOOOK";
    }
    // Check the number of rows affected (optional)
    $rowCount = $stmt->rowCount();
    
    if ($rowCount > 0) {
        echo "Product updated successfully!";
    } else {
        echo "No rows were updated.";
    }


header("location: products.php");

?>