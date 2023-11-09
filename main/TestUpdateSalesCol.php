<?php
require '../conn2.php';

try {
    // your PDO connection code here

    $sql = "UPDATE sales SET vouch_type = 'Sales' WHERE vouch_type <> 'Credit Note'";
    $pdo->exec($sql);

    echo "Update successful!";
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}


?>
