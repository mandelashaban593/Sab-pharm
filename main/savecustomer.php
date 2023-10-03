<?php
session_start();
include('../connect.php');

if(isset($_POST['name'])) $a=date($_POST['name']);
if(isset($_POST['address'])) $b = $_POST['address'];
if(isset($_POST['contact'])) $c = $_POST['contact'];
$d = 0;
$e = '';
if(isset($_POST['note'])) $f = $_POST['note'];
$g = 0;

$q = mysqli_query($con, "SELECT * FROM customer WHERE customer_name ='$a' ") or die(mysqli_error($con));
$rowcount_cust=mysqli_num_rows($q);


/*purchase_details*/

echo $rowcount_cust;
if($rowcount_cust == 1){
	header("location: customer.php");

}


// query
$sql = "INSERT INTO customer (customer_name,address,contact,membership_number,prod_name,note,expected_date) VALUES (:a,:b,:c,:d,:e,:f,:g)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f,':g'=>$g));
header("location: customer.php");


?>