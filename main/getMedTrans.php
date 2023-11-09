<?php
/* Database config */
require '../conn2.php';

?>
<?php
$letter = $_GET['letter']; // Get the input letter from the JavaScript

try {
    // Prepare and execute the SQL query to retrieve medicine names starting with the input letter
    $stmt = $db->prepare("SELECT * FROM products  WHERE med_name LIKE :med_name");
    $stmt->execute(['med_name' => $letter . '%']);
    
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    echo json_encode($result);
} catch (PDOException $e) {
    echo 'Error: ' . $e->getMessage();
}
?>
