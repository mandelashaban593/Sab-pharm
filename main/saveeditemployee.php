<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

if(isset($_POST['memi'])) $id = $_POST['memi'];
if(isset($_POST['username'])) $username = $_POST['username'];
if(isset($_POST['fname'])) $fname = $_POST['fname'];
if(isset($_POST['lname'])) $lname = $_POST['lname'];
if(isset($_POST['gender'])) $gender= $_POST['gender'];
if(isset($_POST['emp_type'])) $emp_type = $_POST['emp_type'];
if(isset($_POST['jobtitle'])) $jobtitle = $_POST['jobtitle'];
if(isset($_POST['department'])) $department = $_POST['department'];
if(isset($_POST['higheduc'])) $higheduc = $_POST['higheduc'];
if(isset($_POST['sal'])) $sal = $_POST['sal'];
if(isset($_POST['tin'])) $tin = $_POST['tin'];
if(isset($_POST['hallowance'])) $hallowance = $_POST['hallowance'];
if(isset($_POST['transpallowance'])) $transpallowance = $_POST['transpallowance'];


/*echo $username;

echo "\n";
echo $password;

echo "\n";
echo $position;*/
$sql = "UPDATE employee
        SET username=?, fname=?,lname=?,gender=?,emp_type=?,jobtitle=?,department=?,higheduc=?,sal=?,tin=?,hallowance=?,transpallowance=?
		WHERE  emp_id=?";
$q = $db->prepare($sql);
$q->execute(array($username,$fname,$lname,$gender,$emp_type,$jobtitle,$department,$higheduc,$sal,$tin,$hallowance,$transpallowance,$id));


// Prepare and execute the SELECT query
$sql = "SELECT emp_id FROM employee WHERE emp_id = :emp_id";
$stmt = $db->prepare($sql);
$stmt->bindParam(':emp_id', $id, PDO::PARAM_INT);
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

$sql = "UPDATE user
        SET username=?, fname=?,lname=?
		WHERE  emp_id=?";
$q = $db->prepare($sql);
$q->execute(array($username,$fname,$lname,$empId));

// query
header("location:employee.php")

?>
