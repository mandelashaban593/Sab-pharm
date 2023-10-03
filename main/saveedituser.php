<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

if(isset($_POST['memi'])) $id = $_POST['memi'];
if(isset($_POST['username'])) $username = $_POST['username'];
if(isset($_POST['name'])) $name = $_POST['name'];
if(isset($_POST['password'])) $password= $_POST['password'];
if(isset($_POST['position'])) $position = $_POST['position'];

/*echo $username;

echo "\n";
echo $password;

echo "\n";
echo $position;*/

$sql = "UPDATE user
        SET username=?, name=?,password=?,position=?
		WHERE  id=?";
$q = $db->prepare($sql);
$q->execute(array($username,$name,$password,$position,$id));

// query
header("location:users.php")

?>
