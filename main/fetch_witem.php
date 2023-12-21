<?php
session_start();
require '../conn2.php';

if (isset($_POST['item_id'])) {
    $itemID = $_POST['item_id'];

    // Prepare and execute a SELECT query to fetch item details
    $stmt = $db->prepare("SELECT  *  FROM products WHERE product_id = :product_id");
    $stmt->bindParam(':product_id', $itemID, PDO::PARAM_INT);
    $stmt->execute();

    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    echo json_encode($result);
}
?>
