<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

if(isset($_POST['fname'])) $fname = $_POST['fname'];
if(isset($_POST['lname'])) $lname = $_POST['lname'];
if(isset($_POST['username'])) $username = $_POST['username'];
if(isset($_POST['password'])) $password = $_POST['password'];
if(isset($_POST['position'])) $position = $_POST['position'];
if(isset($_POST['branch_name'])) $branch_name = $_POST['branch_name'];
echo $username;

echo "\n";
echo $password;

echo "\n";
echo $position;


// Prepare and execute the SELECT query
$sql = "SELECT COUNT(*) FROM user WHERE username = :username";
$stmt = $db->prepare($sql);
$stmt->bindParam(':username', $username, PDO::PARAM_STR);
$stmt->execute();

// Fetch the result
$result = $stmt->fetchColumn();

// Check if the username exists
if ($result > 0) {
	echo "OOOOOOOOK";
    header("location:users.php");
} else{

	echo "User does not exist";


// Begin a transaction
$db->beginTransaction();

try {
    // Insert data into Employee table
    $stmt = $db->prepare("INSERT INTO employee (fname, lname, username) VALUES (?, ?, ?)");
    $stmt->execute([$fname, $lname, $username]);

    // Get the last inserted employee_id
    $employee_id = $db->lastInsertId();

    // Insert data into User table with the corresponding employee_id
    $stmt = $db->prepare("INSERT INTO user (emp_id, username, fname, lname,password, position) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->execute([$employee_id, $username, $fname, $lname, $password, $position]);

    // Commit the transaction
    $db->commit();

    echo "Data inserted successfully!";
} catch (PDOException $e) {
    // Rollback the transaction if an error occurs
    $db->rollBack();
    throw $e; // Rethrow the exception after rolling back
}


 header("location:users.php");

 }

?>