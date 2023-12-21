<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

if(isset($_POST['memi'])) $id = $_POST['memi'];
if(isset($_POST['username'])) $username = $_POST['username'];
if(isset($_POST['fname'])) $fname = $_POST['fname'];
if(isset($_POST['lname'])) $lname = $_POST['lname'];
if(isset($_POST['password'])) $password= $_POST['password'];
if(isset($_POST['position'])) $position = $_POST['position'];

/*echo $username;

echo "\n";
echo $password;

echo "\n";
echo $position;*/

$sql = "UPDATE user
        SET username=?, fname=?,lname=?,password=?,position=?
		WHERE  id=?";
$q = $db->prepare($sql);
$q->execute(array($username,$fname,$lname,$password,$position,$id));

// Prepare and execute the SELECT query
$sql = "SELECT emp_id FROM user WHERE id = :id";
$stmt = $db->prepare($sql);
$stmt->bindParam(':id', $id, PDO::PARAM_INT);
$stmt->execute();

// Fetch the result
$empId = $stmt->fetchColumn();

// Output the result
if ($empId !== false) {

   echo "Employee id<br/>";
   echo $empId;
    echo "The emp_id for user with user_id $id is: $empId";
} else {
    echo "User with user_id $userId not found";
}

$sql = "UPDATE employee
        SET username=?, fname=?,lname=?
		WHERE  emp_id=?";
$q = $db->prepare($sql);
$q->execute(array($username,$fname,$lname,$empId));
// query
header("location:users.php")

?>
