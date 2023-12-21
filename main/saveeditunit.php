<?php
session_start();
require '../conn2.php';
//Connect to mysql server and selecting db
$status = "Active";
$med_name="";
$quantity=0;


if(isset($_POST['unit'])) $unit = $_POST['unit'];

if(isset($_POST['unit_id'])) $unit_id = $_POST['unit_id'];


echo "Unit Value:" .$unit_id;

 try {
        // The customer_id exists; update the amount
       $sql = "UPDATE unit
        SET unit=?
    WHERE unit_id=?";
      $q = $db->prepare($sql);
      $result = $q->execute(array($unit,$unit_id));

      if($result){
      
        echo "Unit updated successfully.";
      } 
  

} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}






header("location: unit.php");


?>

<!-- Add default value to a column.  ALTER TABLE products  ALTER COLUMN product_name  SET DEFAULT 'None' -->
