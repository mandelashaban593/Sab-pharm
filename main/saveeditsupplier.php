<?php
// configuration
include('../connect.php');

// new data

if(isset($_POST['memi'])) $id = $_POST['memi'];
if(isset($_POST['name'])) $suplier_name = $_POST['name'];
if(isset($_POST['contact_person'])) $contact_person = $_POST['contact_person'];
if(isset($_POST['suplier_contact'])) $suplier_contact = $_POST['suplier_contact'];
if(isset($_POST['location'])) $location = $_POST['location'];
if(isset($_POST['suplier_address'])) $suplier_address = $_POST['suplier_address'];

echo "Supplier Name: $suplier_name <br>";
echo "Contact Person: $contact_person<br>";
echo "Supplier contact: $suplier_contact<br>";
echo "Location: $location<br>";
echo "Address:  $suplier_address<br>";

// query

try {
    // Create a PDO database connection
    // SQL query for update
    $sql = "UPDATE supliers SET suplier_name = :suplier_name, suplier_address = :suplier_address,suplier_contact = :suplier_contact, contact_person= :contact_person, location = :location WHERE suplier_id = :suplier_id";
    
    // Prepare the SQL statement
    $stmt = $db->prepare($sql);
    
    // Bind parameters
    $stmt->bindParam(':suplier_name', $suplier_name);
    $stmt->bindParam(':suplier_address', $suplier_address);
    $stmt->bindParam(':suplier_contact', $suplier_contact);
    $stmt->bindParam(':contact_person', $contact_person);
    $stmt->bindParam(':location', $location);
    $stmt->bindParam(':suplier_id', $id);
    // Execute the query
    $stmt->execute();
    
    $rowCount = $stmt->rowCount(); // Get the number of rows affected
    
    if ($rowCount > 0) {
        echo "Record updated successfully!";
    } else {
        echo "No records were updated.";
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}


header("location: supplier.php");

?>