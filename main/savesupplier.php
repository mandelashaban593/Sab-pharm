<?php
error_reporting(0);
session_start();
require '../conn2.php';

if(isset($_POST['name'])) $username = $_POST['name'];
if(isset($_POST['password'])) $password = $_POST['password'];
$name=$username;
$position='supplier';
if(isset($_POST['businessname'])) $business_name = $_POST['businessname'];
if(isset($_POST['address'])) $business_address = $_POST['address'];
if(isset($_POST['work_contact'])) $work_contact = $_POST['work_contact'];
if(isset($_POST['note'])) $note = $_POST['note'];


echo "Business Name<br/>";
echo $business_name;


$q = mysqli_query($con, "SELECT * FROM user WHERE username ='$name' ") or die(mysqli_error($con));
$rowcount_user=mysqli_num_rows($q);


/*user_details*/

echo $rowcount_user;
if($rowcount_user == 1){
	header("location: search_asupplier.php");

}




// query
$sql = "INSERT INTO user (username,password,name,position,business_name,business_address,work_contact,note) VALUES (:username,:password,:name,:position,:business_name,:business_address,:work_contact,:note)";


$q = $db->prepare($sql);
$q->execute(array(':username'=>$username,':password'=>$password,':name'=>$name,':position'=>$position,':business_name'=>$business_name,':business_address'=>$business_address,':work_contact'=>$work_contact,':note'=>$note));
header("location: search_asupplier.php");


?>