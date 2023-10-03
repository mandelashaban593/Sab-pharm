<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

if(isset($_POST['name'])) $name = $_POST['name'];
if(isset($_POST['username'])) $username = $_POST['username'];
if(isset($_POST['password'])) $password = $_POST['password'];
if(isset($_POST['position'])) $position = $_POST['position'];
if(isset($_POST['branch_name'])) $branch_name = $_POST['branch_name'];
echo $username;

echo "\n";
echo $password;

echo "\n";
echo $position;

$q = mysqli_query($con, "SELECT * FROM user WHERE username ='$username' ") or die(mysqli_error($con));
$rowcount_user=mysqli_num_rows($q);


/*user_details*/

echo $rowcount_user;
if($rowcount_user == 1){
	header("location:users.php");
}




// query
$sql = "INSERT INTO user (username,password,name,position) VALUES ('$username','$password','$name','$position')";
$q = mysqli_query($con, $sql) or die(mysqli_error($con));


header("location:users.php")

?>