<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

if(isset($_POST['memi'])) $id = $_POST['memi'];
if(isset($_POST['fname'])) $fname = $_POST['fname'];
if(isset($_POST['lname'])) $lname = $_POST['lname'];
if(isset($_POST['emp_id'])) $emp_id = (int)$_POST['emp_id'];
if(isset($_POST['amount'])) $amount = $_POST['amount'];
if(isset($_POST['date'])) $date = date($_POST['date']);


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
	$sql = "UPDATE  advanced_payment
	        SET emp_id=?, fname=?,lname=?,amount=?,payment_date=?
			WHERE  payment_id=?";
	$q = $db->prepare($sql);
	$q->execute(array($emp_id,$fname,$lname,$amount,$date,$id));

    // Commit the transaction
    $db->commit();

    echo "Data updated successfully!";
} catch (PDOException $e) {
    // Rollback the transaction if an error occurs
    $db->rollBack();
    throw $e; // Rethrow the exception after rolling back
}


// query
header("location:advancepay.php")

?>
