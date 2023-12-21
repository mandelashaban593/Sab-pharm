<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';
$cash=0;
if(isset($_POST['suplier_id'])) $suplier_id= $_POST['suplier_id'];
if(isset($_POST['sup_type'])) $sup_type= $_POST['sup_type'];


echo "<br/>suplier type:";
echo $sup_type;


if($sup_type=='wholesale') {

header("location: wcreditpayment.php?suplier_id=$suplier_id&sup_type=$sup_type");
exit();
}

/*Cash is when the customer pays by cash immediately , either partly or on full payment*/

if($sup_type=='retail') {

header("location: creditpayment.php?suplier_id=$suplier_id&sup_type=$sup_type");
exit();
}
// query



?>