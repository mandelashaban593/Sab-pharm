<?php
session_start();
require '../conn2.php';

if (isset($_POST['search_item'])) {
    $searchItem = $_POST['search_item'];

    echo $searchItem;

    // Prepare and execute a SELECT query to fetch item details based on search input
    $stmt = $db->prepare("SELECT  *  FROM wproducts WHERE med_name LIKE :med_name");
    $stmt->bindValue(':med_name', '%' . $searchItem . '%', PDO::PARAM_STR);
    $stmt->execute();

    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo '<option value="' . $row['product_id'] . '">' . $row['med_name'] . '</option>';
    }

}
?>
