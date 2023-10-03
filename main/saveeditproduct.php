<?php
// configuration
include('../connect.php');

// new data

if(isset($_POST['memi'])) $id = $_POST['memi'];
if(isset($_POST['med_name'])) $med_name = $_POST['med_name'];
if(isset($_POST['category'])) $category = $_POST['category'];
if(isset($_POST['quantity'])) $quantity = $_POST['quantity'];
if(isset($_POST['sell_type'])) $sell_type = $_POST['sell_type'];
if(isset($_POST['reg_date'])) $reg_date = date($_POST['reg_date']);
if(isset($_POST['reg_date'])) $new_reg_date = date($_POST['reg_date']);
if(isset($_POST['exp_date'])) $exp_date=  date($_POST['exp_date']); 
if(isset($_POST['price'])) $sell_price = $_POST['price'];
if(isset($_POST['supplier'])) $supplier = $_POST['supplier'];
if(isset($_POST['o_price'])) $o_price = $_POST['o_price'];
if(isset($_POST['profit'])) $profit  = $_POST['profit'];
if(isset($_POST['date_arrival'])) $date_arrival = date($_POST['date_arrival']);
if(isset($_POST['del_no'])) $del_no = $_POST['del_no'];
if(isset($_POST['qty_left'])) $qty_left = $_POST['qty_left'];
$tot_buy_price = $o_price*$quantity;



// query
$sql = "UPDATE products 
        SET med_name=?, category=?, quantity=?, sell_type=?, reg_date=?, exp_date=?, price=?, supplier=?, o_price=?, profit=?, date_arrival=?, del_no=?, qty_left=?, tot_buy=?
		WHERE product_id=?";
$q = $db->prepare($sql);
$q->execute(array($med_name,$category,$quantity,$sell_type,$new_reg_date,$new_exp_date,$sell_price,$supplier,$o_price,$profit,$date_arrival,$del_no,$qty_left,$tot_buy_price,$id));
header("location: products.php");

?>