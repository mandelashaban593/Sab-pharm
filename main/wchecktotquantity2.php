<?php
// Connect to your database
include('../conn2.php');


// Function to check if the total quantity exceeds the available quantity
function checkQuantity($medName, $batchNo, $quantity, $db) {
    echo "Medicine Name: " .  $medName  . "<br/>" ;
    echo "Batch No: " . $batchNo  . "<br/>" ;

    try {
    
       $sql = "SELECT quantity FROM wproducts WHERE med_name = :medName AND batch_no = :batchNo and status='Active'  ";
        echo "SQL Query: $sql";
        $stmt = $db->prepare($sql);

        $stmt->bindParam(':medName', $medName, PDO::PARAM_STR);
        $stmt->bindParam(':batchNo', $batchNo, PDO::PARAM_STR);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
         // Print the result for debugging
        print_r($result);

    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }

    $availableQuantity = $result['quantity'];
    echo "Quantity: " .  $quantity  . "<br/>" ;

    $totalQuantity = $totalQuantity + $quantity;

    echo "Available quantity: " .  $availableQuantity  . "<br/>" ;
    echo "Total front end quantity: " . $totalQuantity   . "<br/>" ;

    // Adjust the following condition based on your specific requirements
    if ($totalQuantity > $availableQuantity) {
        echo "error"  . "<br/>" ;
    }
}

// Manual values for testing
$savemedn = ['Metronidazole11', 'Metronidazole11', 'Metronidazole11', 'Metronidazole11'];
$savebatno = ['BC291', 'BC291', 'BC291', 'BC291'];
$saveqty = [10, 100, 30, 50];
$totalQuantity  = 0;
for ($i = 0; $i < count($savemedn); $i++) {
    $medName = $savemedn[$i];
    $batchNo = $savebatno[$i];
    $quantity = $saveqty[$i];

    // Call the function to check quantity
   echo "Medicine Name: " .  $medName  . "<br/>" ;
    echo "Batch No: " . $batchNo  . "<br/>" ;

    try {
    
       $sql = "SELECT quantity FROM wproducts WHERE med_name = :medName AND batch_no = :batchNo and status='Active'  ";
        echo "SQL Query: $sql";
        $stmt = $db->prepare($sql);

        $stmt->bindParam(':medName', $medName, PDO::PARAM_STR);
        $stmt->bindParam(':batchNo', $batchNo, PDO::PARAM_STR);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
         // Print the result for debugging
        print_r($result);

    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }

    $availableQuantity = $result['quantity'];
    echo  "<br/>" . "Quantity: " .  $quantity  . "<br/>" ;

    $totalQuantity = $totalQuantity + $quantity;

    echo "Available quantity: " .  $availableQuantity  . "<br/>" ;
    echo "Total front end quantity: " . $totalQuantity   . "<br/>" ;

  
}


  // Adjust the following condition based on your specific requirements
  if ($totalQuantity > $availableQuantity) {
    echo "error";
  }


// Continue with your existing code to save the sales data
?>
