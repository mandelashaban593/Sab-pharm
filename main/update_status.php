<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST['id'];
    $status = $_POST['status'];

    // Update the status in the database
    $stmt = $conn->prepare("UPDATE purchase_rev SET $status = 'Approved' WHERE id = :id");
    $stmt->bindParam(':id', $id);
    $stmt->execute();

    // Return the updated status
    echo 'Approved';
} else {
    // Invalid request
    echo 'Invalid request';
}
?>
