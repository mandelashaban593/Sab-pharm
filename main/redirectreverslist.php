<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';
$cash=0;
if(isset($_POST['rev_type'])) $rev_type= $_POST['rev_type'];


echo "<br/>Reversal Type:";
echo $rev_type;

if($rev_type=='purchase') {

header("location: purchasereverlist.php?rev_type=$rev_type");
exit();
}


if($rev_type=='wholesale') {

header("location: wcustpayment.php?customer_id=$customer_id&cust_type=$cust_type");
exit();
}

/*Cash is when the customer pays by cash immediately , either partly or on full payment*/

if($rev_type=='retail') {

header("location: custpayment.php?customer_id=$customer_id&cust_type=$cust_type");
exit();
}
// query



?>

