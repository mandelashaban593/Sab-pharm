<?php

try {
    require 'conn2.php';


    // Reset the AUTO_INCREMENT counter
    $sql = "ALTER TABLE cust_retpayhist AUTO_INCREMENT = 1";
    $db->exec($sql);

    echo "AUTO_INCREMENT counter reset!";
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}


?>