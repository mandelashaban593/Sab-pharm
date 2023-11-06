<?php
error_reporting(0);
session_start();
require '../conn2.php';

if(isset($_POST['suplier_id'])) $suplier_id = $_POST['suplier_id'];
if(isset($_POST['pay_type'])) $pay_type = $_POST['pay_type'];
if(isset($_POST['date'])) $date = date($_POST['date']);
if(isset($_POST['amount'])) $amount = $_POST['amount'];


$q = mysqli_query($con, "SELECT * FROM supliers WHERE suplier_name ='$name' ") or die(mysqli_error($con));
$rowcount_user=mysqli_num_rows($q);


$query = mysqli_query($con, "SELECT * FROM supliers WHERE suplier_id='$suplier_id'") or die(mysqli_error($con));
$row=mysqli_fetch_array($query);
$suplier_name=$row['suplier_name'];


/*user_details*/

/*echo $rowcount_user;
if($rowcount_user == 1){
	header("location: supplier.php");

}
*/
$_SESSION['suplier_id'] = $suplier_id;
echo "suplier_id: $suplier_id<br>";
echo "pay_type: $pay_type<br>";
echo "date: $date<br>";
echo "amount: $amount<br>";
echo "Sup name: $suplier_name<br>";



 try {
    // Check if the customer_id exists in the database
    $checkQuery = "SELECT * FROM purch_revenue  WHERE suplier_id = :suplier_id";
    $stmt = $db->prepare($checkQuery);
    $stmt->bindParam(':suplier_id', $suplier_id, PDO::PARAM_INT);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
        // The customer_id exists; update the amount
        $updateQuery = "UPDATE purch_revenue  SET credit = credit - :credit WHERE suplier_id = :suplier_id";
        $stmt = $db->prepare($updateQuery);
        $stmt->bindParam(':credit', $amount, PDO::PARAM_INT);
        $stmt->bindParam(':suplier_id', $suplier_id, PDO::PARAM_INT);
        $stmt->execute();
        echo "Amount updated successfully.";

    } 

} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}




try {
    // Create a PDO database connectio
    
    // SQL query with placeholders
    $sql = "INSERT INTO  credit_payhist (suplier_id,suplier_name,cash,pay_type,date) VALUES (:suplier_id, :suplier_name, :cash, :pay_type, :date)";
    
    // Prepare the SQL statement
    $stmt = $db->prepare($sql);
    
    // Bind parameters
    $stmt->bindParam(':suplier_id', $suplier_id);
    $stmt->bindParam(':suplier_name', $suplier_name);
    $stmt->bindParam(':cash', $amount);
    $stmt->bindParam(':pay_type', $pay_type);
    $stmt->bindParam(':date', $date);
  
    
    // Execute the query
    $stmt->execute();
    
    echo "Data inserted successfully!";

    header("location: creditpayment.php?suplier_id=$suplier_id");

} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}


?>
