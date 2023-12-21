<?php

try {
    require 'conn2.php';


    // Set @row_number variable to 0
    $sql = "SET @row_number = 0";
    $db->exec($sql);

    // Update existing rows with unique values
    $sql = "UPDATE cust_retpayhist SET transaction_id = (@row_number := @row_number + 1)";
    $db->exec($sql);

    echo "Existing rows updated with unique transaction IDs!";
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

?>