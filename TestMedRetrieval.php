<?php
require 'conn2.php';
 // Prepare the SQL statement
 $med_name ='Ciprofloxacin71';
 $status = 'Active';
$stmt = $db->prepare("SELECT DISTINCT category, inventory, sell_type FROM products WHERE med_name = :med_name  AND status = :status");
// Bind the parameter
$stmt->bindParam(':med_name', $med_name, PDO::PARAM_STR);
$stmt->bindParam(':status', $status, PDO::PARAM_STR);
// Execute the query
$stmt->execute();
// Fetch all rows as an associative array
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
// Iterate over the result set and echo the category
foreach ($result as $res) {
    $category = $res['category'];
    $inventory= $res['inventory'];
    $sell_type = $res['sell_type'];

            }

 echo "Category: $category<br>";

?>