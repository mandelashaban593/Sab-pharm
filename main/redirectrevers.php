<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';
$cash=0;
if(isset($_POST['rev_type'])) $rev_type= $_POST['rev_type'];


echo "<br/>Reversal Type:";
echo $rev_type;


if($rev_type=='wholesale') {

header("location: wpurchreversal.php?rev_type=$rev_type");
exit();
}

/*Cash is when the customer pays by cash immediately , either partly or on full payment*/

if($rev_type=='retail') {

header("location: retpurchreversal.php?rev_type=$rev_type");
exit();
}
// query



?>

