<?php
require '../conn2.php';

if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST["product_id"])) {
    $productId = $_POST["product_id"];

    // Query the database to get product details
    $query = "SELECT product_id,batch_no, exp_date, med_name, price FROM products WHERE product_id = :product_id";
    $stmt = $db->prepare($query);
    $stmt->bindParam(":product_id", $productId, PDO::PARAM_INT);
    $stmt->execute();
    
    $product = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($product) {
        echo json_encode($product);
    } else {
        echo json_encode(null);
    }
} else {
    echo json_encode(null);
}
?>
