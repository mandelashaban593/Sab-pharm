<?php
session_start();
require '../conn2.php';

if(isset($_POST['name'])) $name=$_POST['name'];
if(isset($_POST['address'])) $address = $_POST['address'];
if(isset($_POST['contact'])) $contact = $_POST['contact'];
if(isset($_POST['contact_person'])) $contact_person = $_POST['contact_person'];

if(isset($_POST['note'])) $note = $_POST['note'];

echo " Name: $name<br>";
echo "contact: $contact<br>";
echo "Address:  $address<br>";
echo "Note: $note<br>";

$q = mysqli_query($con, "SELECT * FROM customer WHERE customer_name ='$name' ") or die(mysqli_error($con));
$rowcount_cust=mysqli_num_rows($q);


/*purchase_details*/

echo $rowcount_cust;
if($rowcount_cust == 1){
	header("location:  select_customers.php");

}


// query
/*$sql = "INSERT INTO customer (customer_name,address,contact,membership_number,prod_name,note,expected_date) VALUES (:a,:b,:c,:d,:e,:f,:g)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f,':g'=>$g));
header("location: select_customers.php");*/


try {
    // Create a PDO database connectio
    
    // SQL query with placeholders
    $sql = "INSERT INTO customer (customer_name,address,contact,note,contact_person) VALUES (:customer_name, :address, :contact, :note, :contact_person)";
    
    // Prepare the SQL statement
    $stmt = $db->prepare($sql);
    
    // Bind parameters
    $stmt->bindParam(':customer_name', $name);
    $stmt->bindParam(':address', $address);
    $stmt->bindParam(':contact', $contact);
    $stmt->bindParam(':note', $note);
    $stmt->bindParam(':contact_person', $contact_person);
    
    // Execute the query
    $stmt->execute();
    
    echo "Data inserted successfully!";
    header("location: select_customers.php");
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}






?>