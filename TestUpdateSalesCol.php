<?php
require 'conn2.php';

try {
    // your PDO connection code here

    $sql = "UPDATE sales SET vouch_type = 'Sales' WHERE vouch_type <> 'Credit Note'";
    $db->exec($sql);

    echo "Update successful!";
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}


/*
UPDATE sales
SET vouch_type = 'Sales'
WHERE vouch_type IS NULL;
*/

?>
