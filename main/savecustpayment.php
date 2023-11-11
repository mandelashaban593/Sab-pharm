<?php
error_reporting(0);
session_start();
require '../conn2.php';

if(isset($_POST['customer_id'])) $customer_id = $_POST['customer_id'];
if(isset($_POST['pay_type'])) $pay_type = $_POST['pay_type'];
if(isset($_POST['date'])) $date = date($_POST['date']);
if(isset($_POST['amount'])) $amount = $_POST['amount'];


$q = mysqli_query($con, "SELECT * FROM customer WHERE customer_name ='$name' ") or die(mysqli_error($con));
$rowcount_user=mysqli_num_rows($q);


$query = mysqli_query($con, "SELECT * FROM customer WHERE customer_id='$customer_id'") or die(mysqli_error($con));
$row=mysqli_fetch_array($query);
$customer_name=$row['customer_name'];


/*user_details*/

/*echo $rowcount_user;
if($rowcount_user == 1){
	header("location: supplier.php");

}
*/
$_SESSION['customer_id'] = $customer_id;
echo "customer_id: $customer_id<br>";
echo "pay_type: $pay_type<br>";
echo "date: $date<br>";
echo "amount: $amount<br>";
echo "Sup name: $customer_name<br>";



 try {
    // Check if the customer_id exists in the database
    $checkQuery = "SELECT * FROM retcustomer_credit  WHERE customer_id = :customer_id";
    $stmt = $db->prepare($checkQuery);
    $stmt->bindParam(':customer_id', $customer_id, PDO::PARAM_INT);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
        // The customer_id exists; update the amount
        $updateQuery = "UPDATE retcustomer_credit  SET credit = credit - :credit WHERE customer_id = :customer_id";
        $stmt = $db->prepare($updateQuery);
        $stmt->bindParam(':credit', $amount, PDO::PARAM_INT);
        $stmt->bindParam(':customer_id', $customer_id, PDO::PARAM_INT);
        $stmt->execute();
        echo " Credit Amount updated successfully.";

    } 

} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}


try {
    // Check if the customer_id exists in the database
    $checkQuery = "SELECT * FROM retcustomer_credit  WHERE customer_id = :customer_id";
    $stmt = $db->prepare($checkQuery);
    $stmt->bindParam(':customer_id', $customer_id, PDO::PARAM_INT);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
        // The customer_id exists; update the amount
        $updateQuery = "UPDATE retcustomer_credit  SET cash = cash + :cash WHERE customer_id = :customer_id";
        $stmt = $db->prepare($updateQuery);
        $stmt->bindParam(':cash', $amount, PDO::PARAM_INT);
        $stmt->bindParam(':customer_id', $customer_id, PDO::PARAM_INT);
        $stmt->execute();
        echo " Cash Amount updated successfully.";

    } 

} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}




try {
    // Create a PDO database connectio
    
    // SQL query with placeholders

    $sql = "INSERT INTO cust_retpayhist (customer_id,customer_name,cash,pay_type,date) VALUES (?, ?, ?, ?, ?)";

    // Use prepared statement
    $stmt = $db->prepare($sql);
    
    // Execute the statement with the values
    $stmt->execute([$customer_id, $customer_name, $amount, $pay_type, $date]);

    // Retrieve the ID of the inserted record

    $lastInsertedId = $db->lastInsertId();
    echo "The ID of the currently inserted record is: " . $lastInsertedId;
    echo "<br/>";
    
    echo "Data inserted successfully!";



} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}




header("location: wcustpreview.php?id=$lastInsertedId&customer_id=$customer_id");
exit();



?>
