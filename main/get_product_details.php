<?php
// Create a PDO database connection (replace with your credentials)
 $hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'sales';


try {
    $pdo = new PDO("mysql:host=$hostname;dbname=$database", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
    die();
}

if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST["product_id"])) {
    $productId = $_POST["product_id"];

    // Query the database to get product details
    $query = "SELECT product_id,batch_no, exp_date, med_name, price FROM products WHERE product_id = :product_id";
    $stmt = $pdo->prepare($query);
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
