<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';
$cash=0;
if(isset($_POST['customer_id'])) $customer_id= $_POST['customer_id'];
if(isset($_POST['cust_type'])) $cust_type= $_POST['cust_type'];


echo "<br/>Customer type:";
echo $cust_type;


if($cust_type=='wholesale') {

header("location: wcustpayment.php?customer_id=$customer_id&cust_type=$cust_type");
exit();
}

/*Cash is when the customer pays by cash immediately , either partly or on full payment*/

if($cust_type=='retail') {

header("location: custpayment.php?customer_id=$customer_id&cust_type=$cust_type");
exit();
}
// query



?>