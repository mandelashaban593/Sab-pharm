<?php
session_start();
require '../conn2.php';
//Connect to mysql server and selecting db
if(isset($_POST['query'])) $query = $_POST['query'];

$sql = mysqli_query($con, "SELECT * FROM products   WHERE med_name = '$query'  ");
$array = array();

while ($row = mysqli_fetch_assoc($sql)) {
    $array[] = $row['med_name'];
}

echo json_encode($array);}





// query


?>