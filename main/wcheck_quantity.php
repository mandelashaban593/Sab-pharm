<?php
// Assuming you have a PDO connection
include('../conn2.php');


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sanitize input
    $productId = filter_var($_POST["product_id"], FILTER_SANITIZE_NUMBER_INT);
    $quantity = filter_var($_POST["quantity"], FILTER_SANITIZE_NUMBER_INT);

    // Query to check available quantity
    $stmt = $db->prepare("SELECT quantity FROM wproducts WHERE product_id = :product_id");
    $stmt->bindParam(":product_id", $productId, PDO::PARAM_INT);
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    // Get the number of rows
    $rowCount = $stmt->rowCount();

    if ($rowCount > 0) {
      
        $availableQuantity = $row['quantity'];

        if ($quantity < $availableQuantity) {
            echo "";
        } elseif ($quantity > $availableQuantity) {
            echo "Quantity is greater than available quantity.";
        } elseif ($availableQuantity == 0) {
            echo "Quantity available is zero.";
        } elseif ($availableQuantity < 0) {
            echo "Quantity available is less than zero.";
        } else {
            echo ""; // Empty string if quantity is equal to available quantity
        }
    } else {
        echo "Product not found.";
    }

    //$db->close();
}
?>