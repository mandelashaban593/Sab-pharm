<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';


$date = date('m/d/y', strtotime($_POST['date']));
$name = $_POST['name'];
$amount= $_POST['amount'];
$remarks = $_POST['remarks'];

if(isset($_POST['date'])) $date = date('m/d/y', strtotime($_POST['date']));
if(isset($_POST['name'])) $name = $_POST['name'];
if(isset($_POST['amount'])) $amount= $_POST['amount'];
if(isset($_POST['remarks'])) $remarks = $_POST['remarks'];


$q = mysqli_query($con, "SELECT * FROM equity WHERE name ='$name' ") or die(mysqli_error($con));
$rowcount_equity=mysqli_num_rows($q);


/*purchase_details*/

echo $rowcount_equity;
if($rowcount_equity == 1){
	header("location: equity.php?iv=$name");

}

// query
$sql = "INSERT INTO equity (entry_date,name,amount,remarks) VALUES ('$date','$name','$amount','$remarks')";
$q = mysqli_query($con, $sql) or die(mysqli_error($con));

header("location: equity.php?iv=$name");


?>
