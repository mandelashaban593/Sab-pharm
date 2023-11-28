<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

if(isset($_POST['memi'])) $id = $_POST['memi'];
if(isset($_POST['fname'])) $fname = $_POST['fname'];
if(isset($_POST['lname'])) $lname = $_POST['lname'];
if(isset($_POST['emp_id'])) $emp_id = (int)$_POST['emp_id'];
if(isset($_POST['hours_worked'])) $hours_worked = $_POST['hours_worked'];
if(isset($_POST['date'])) $date = date($_POST['date']);
$amount = 10000;
$tot = $amount*$hours_worked;

/*echo $username;

echo "\n";
echo $password;
employee_id, fname, lname,hours_worked,amount, overtime_date)
echo "\n";
echo $position;*/

// Begin a transaction
$db->beginTransaction();

try {

    // Insert data into User table with the corresponding employee_id
	$sql = "UPDATE overtime
	        SET emp_id=?, fname=?,lname=?,hours_worked=?,amount=?,overtime_date=?
			WHERE  overtime_id=?";
	$q = $db->prepare($sql);
	$q->execute(array($emp_id,$fname,$lname,$hours_worked,$tot,$date,$id));

    // Commit the transaction
    $db->commit();

    echo "Data inserted successfully!";
} catch (PDOException $e) {
    // Rollback the transaction if an error occurs
    $db->rollBack();
    throw $e; // Rethrow the exception after rolling back
}



// query
header("location:overtime.php")

?>
