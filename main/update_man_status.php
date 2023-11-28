<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
   $invoice_number = $_POST['invoice_number'];
    $status = $_POST['status'];

    // Update the status in the database
   $stmt = $db->prepare("UPDATE purchases_rever SET man_approve = 'Approved' WHERE invoice_number = :invoice_number");
    $stmt->bindParam(':invoice_number', $invoice_number);
    $stmt->execute();
    //require 'purchupdbyreversal.php';

    // Return the updated status
    echo 'Approved';
} else {
    // Invalid request
    echo 'Invalid request';
}

?>
<!-- Invoice Number RS09312 purchasereverlist.php:372:21
Status acc_approve -->