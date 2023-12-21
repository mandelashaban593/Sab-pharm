<?php
// Connect to your database
include('../conn2.php');
$totalQuantity  = 0;
// Manual values for testing
for ($i = 0; $i < count($_POST['savemedn']); $i++) {
    $medName = $_POST['savemedn'][$i];
    $batchNo = $_POST['savebatno'][$i];
    $quantity = $_POST['saveqty'][$i];

    // Call the function to check quantity
   // echo "Medicine Name: " .  $medName  . "<br/>" ;
   // echo "Batch No: " . $batchNo  . "<br/>" ;

    try {
    
       $sql = "SELECT quantity FROM wproducts WHERE med_name = :medName AND batch_no = :batchNo and status='Active'  ";
      //  echo "SQL Query: $sql";
        $stmt = $db->prepare($sql);

        $stmt->bindParam(':medName', $medName, PDO::PARAM_STR);
        $stmt->bindParam(':batchNo', $batchNo, PDO::PARAM_STR);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
         // Print the result for debugging
       // print_r($result);

    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }

    $availableQuantity = $result['quantity'];
   // echo  "<br/>" . "Quantity: " .  $quantity  . "<br/>" ;
    $totalQuantity = (int)$totalQuantity + (int)$quantity;
  //  echo "Available quantity: " .  $availableQuantity  . "<br/>" ;
   // echo "Total front end quantity: " . $totalQuantity   . "<br/>" ;

  
}

  // Adjust the following condition based on your specific requirements
  if ($totalQuantity > $availableQuantity) {
    echo "Total quantity is greater than the available quantity";
  }


?>
