<?php
session_start();
require '../conn2.php';
//Connect to mysql server and selecting db
$status = "Active";
$med_name="";
$quantity=0;


if(isset($_POST['cat'])) $category = $_POST['cat'];

if(isset($_POST['category_id'])) $category_id = $_POST['category_id'];


echo "Category Value:" .$category_id;

 try {
        // The customer_id exists; update the amount
       $sql = "UPDATE category
        SET cat=?
    WHERE category_id=?";
      $q = $db->prepare($sql);
      $result = $q->execute(array($category,$category_id));

      if($result){
      
        echo "Catgory updated successfully.";
      } 
  

} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}






header("location: category.php");


?>

<!-- Add default value to a column.  ALTER TABLE products  ALTER COLUMN product_name  SET DEFAULT 'None' -->
