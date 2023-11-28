<?php
// Assuming you have a PDO connection
include('../conn2.php');


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sanitize input
    $productId = filter_var($_POST["product_id"], FILTER_SANITIZE_NUMBER_INT);
    $quantity = filter_var($_POST["quantity"], FILTER_SANITIZE_NUMBER_INT);

    // Query to check available quantity
    $stmt = $db->prepare("SELECT quantity FROM products WHERE product_id = :product_id");
    $stmt->bindParam(":product_id", $productId, PDO::PARAM_INT);
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);


    if ($row && $row["quantity"] <=0) {
        echo "qtyavailess";

    } else if ($row && $row["quantity"] <= $quantity) {
        echo "lessqty";

    } else if  ($row && $quantity >= $row["quantity"]) {
        echo "inpqtygreater";

    } else {
        echo 'invalid';
        }
}
?>
