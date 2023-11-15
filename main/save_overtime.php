<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

if(isset($_POST['fname'])) $fname = $_POST['fname'];
if(isset($_POST['lname'])) $lname = $_POST['lname'];
if(isset($_POST['emp_id'])) $emp_id = $_POST['emp_id'];
if(isset($_POST['hours_worked'])) $hours_worked = $_POST['hours_worked'];
if(isset($_POST['date'])) $date = date($_POST['date']);
$amount = 10000;
$tot = $amount*$hours_worked;

echo $fname;

echo "\n";
echo $lname;

echo "\n";
echo $emp_id;


// Begin a transaction
$db->beginTransaction();

try {

    // Insert data into User table with the corresponding employee_id
    $stmt = $db->prepare("INSERT INTO overtime (emp_id, fname, lname,hours_worked,amount, overtime_date) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->execute([$emp_id, $fname, $lname, $hours_worked, $tot, $date]);

    // Commit the transaction
    $db->commit();

    echo "Data inserted successfully!";
} catch (PDOException $e) {
    // Rollback the transaction if an error occurs
    $db->rollBack();
    throw $e; // Rethrow the exception after rolling back
}


header("location:overtime.php");

 

?>