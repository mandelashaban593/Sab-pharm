<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';
?>

<?php
// Initialize your database connection here.
if (isset($_POST["input"])) {
    $input = $_POST["input"] . "%"; // Add a wildcard for searching.

    $sql = "SELECT * FROM products WHERE med_name LIKE ?";
    $stmt = $db->prepare($sql);
    $stmt->execute([$input]);

    $suggestions = [];
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $suggestions[] = $row;

    }

    echo json_encode($suggestions);
}
?>
