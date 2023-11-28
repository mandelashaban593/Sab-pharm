<?php
session_start();
require '../conn2.php';
//Connect to mysql server and selecting db
$status = "Active";
$med_name="";
$quantity=0;


if(isset($_POST['cat'])) $category = $_POST['cat'];

$result = $db->prepare("SELECT * FROM category WHERE cat= :cat");
//$result->bindParam(':batch_no', $batch_no);
$result->bindParam(':cat', $category, PDO::PARAM_STR);
$result->execute();
$rowCount = $result->rowCount(); // Get the number of rows affected

for($i=0; $row = $result->fetch(); $i++){
$cat=$row['cat'];
$category_id=$row['category_id'];
echo "Product id batch exist<br/>";
echo $category_id;
echo "<br/>Category 1\n";
echo $cat;

}




echo "<br/>Category <br/>";
echo $category;

echo "<br/>No of Category<br/>";

echo $rowCount;
echo "<br/>";


echo "GOOOOD";
// query
	//

/*$sql = "INSERT INTO products (med_name,category,quantity,sell_type,reg_date,exp_date,price,supplier,o_price,profit,date_arrival,del_no,tot_buy,status, qty_left,product_code,gen_name,product_name, cost,onhand_qty,qty,qty_sold,expiry_date) VALUES ('$med_name','$category','$quantity','$sell_type','$new_reg_date','$new_exp_date','$sell_price','$supplier','$o_price','$profit','$date_arrival','$del_no','$tot_buy_price','$status', '$quantity', '$product_code', '$gen_name', '$gen_name', '$o_price','$onhand_qty','$quantity','$qty_sold', '$new_exp_date')";
$q = mysqli_query($con, $sql) or die(mysqli_error($con));*/
  if ($rowCount > 0)
  {

echo "Category Value:" .$category_id;

 try {
        // The customer_id exists; update the amount
       $sql = "UPDATE category
        SET cat=?
    WHERE category_id=?";
      $q = $db->prepare($sql);
      $result = $q->execute(array($cat,$category_id));

      if($result){
      
        echo "Catgory updated successfully.";
      } 
  

} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}




} else{


try {

$sql = "INSERT INTO category (cat) VALUES (:a)";
$q = $db->prepare($sql);
$result = $q->execute(array(':a'=>$category));

  if($result){
      
        echo "Category  data saved successfully.";
  } 


} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}


}

header("location: category.php");


?>

<!-- Add default value to a column.  ALTER TABLE products  ALTER COLUMN product_name  SET DEFAULT 'None' -->
