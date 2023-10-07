<?php
error_reporting(0);
session_start();
require '../conn2.php';
$position='supplier';
if(isset($_POST['name'])) $name = $_POST['name'];
if(isset($_POST['contact_person'])) $contact_person = $_POST['contact_person'];
if(isset($_POST['suplier_contact'])) $suplier_contact = $_POST['suplier_contact'];
if(isset($_POST['location'])) $location = $_POST['location'];
if(isset($_POST['suplier_address'])) $suplier_address = $_POST['suplier_address'];

$q = mysqli_query($con, "SELECT * FROM supliers WHERE suplier_name ='$name' ") or die(mysqli_error($con));
$rowcount_user=mysqli_num_rows($q);


/*user_details*/

echo $rowcount_user;
if($rowcount_user == 1){
	header("location: supplier.php");

}


echo "Supplier Name: $name<br>";
echo "Contact Person: $contact_person<br>";
echo "Supplier contact: $suplier_contact<br>";
echo "Location: $location<br>";
echo "Address:  $suplier_address<br>";

// query
/*$sql = "INSERT INTO supliers (suplier_name,suplier_address,suplier_contact,contact_person ,location) VALUES (:suplier_name,:suplier_address,:suplier_contact,:contact_person ,:location)";


$q = $db->prepare($sql);
$q->execute(array(':suplier_name'=>$name,':suplier_address'=>$suplier_address,':suplier_contact'=>$suplier_contact,':contact_person'=>$contact_person,':location'=>$location));*/
//header("location: supplier.php");



try {
    // Create a PDO database connectio
    
    // SQL query with placeholders
    $sql = "INSERT INTO supliers (suplier_name,suplier_address,suplier_contact,contact_person,location) VALUES (:suplier_name, :suplier_address, :suplier_contact, :contact_person, :location)";
    
    // Prepare the SQL statement
    $stmt = $db->prepare($sql);
    
    // Bind parameters
    $stmt->bindParam(':suplier_name', $name);
    $stmt->bindParam(':suplier_address', $suplier_address);
    $stmt->bindParam(':suplier_contact', $suplier_contact);
    $stmt->bindParam(':contact_person', $contact_person);
    $stmt->bindParam(':location', $location);
    
    // Execute the query
    $stmt->execute();
    
    echo "Data inserted successfully!";
    header("location: supplier.php");
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}






?>