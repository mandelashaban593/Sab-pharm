<?php
session_start();
require '../conn2.php';
//Connect to mysql server and selecting db
$status = "Active";
$med_name="";
$quantity=0;


if(isset($_POST['unit'])) $unit = $_POST['unit'];

$result = $db->prepare("SELECT * FROM unit WHERE unit= :unit");
//$result->bindParam(':batch_no', $batch_no);
$result->bindParam(':unit', $unit, PDO::PARAM_STR);
$result->execute();
$rowCount = $result->rowCount(); // Get the number of rows affected

for($i=0; $row = $result->fetch(); $i++){
$unit=$row['unit'];
$unit_id=$row['unit_id'];
echo "Unit id batch exist<br/>";
echo $unit_id;
echo "<br/>Unit 1\n";
echo $cat;

}




echo "<br/>Unit <br/>";
echo $unit;

echo "<br/>No of unit<br/>";

echo $rowCount;
echo "<br/>";


echo "GOOOOD";
// query
	//

/*$sql = "INSERT INTO products (med_name,category,quantity,sell_type,reg_date,exp_date,price,supplier,o_price,profit,date_arrival,del_no,tot_buy,status, qty_left,product_code,gen_name,product_name, cost,onhand_qty,qty,qty_sold,expiry_date) VALUES ('$med_name','$category','$quantity','$sell_type','$new_reg_date','$new_exp_date','$sell_price','$supplier','$o_price','$profit','$date_arrival','$del_no','$tot_buy_price','$status', '$quantity', '$product_code', '$gen_name', '$gen_name', '$o_price','$onhand_qty','$quantity','$qty_sold', '$new_exp_date')";
$q = mysqli_query($con, $sql) or die(mysqli_error($con));*/
  if ($rowCount > 0)
  {

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




} else{


try {

$sql = "INSERT INTO unit (unit) VALUES (:a)";
$q = $db->prepare($sql);
$result = $q->execute(array(':a'=>$unit));

  if($result){
      
        echo "Unit  data saved successfully.";
  } 


} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}


}

header("location: unit.php");


?>

<!-- Add default value to a column.  ALTER TABLE products  ALTER COLUMN product_name  SET DEFAULT 'None' -->
