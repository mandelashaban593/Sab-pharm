<?php  
// Initialize the total amount
$totalAmount = 0;

// Iterate through the 'amount' array
foreach ($_POST['amount'] as $amount) {
    // Ensure the value is numeric before adding it to the total
    if (is_numeric($amount)) {
        $totalAmount += floatval($amount);
    }
}


echo "Total amount: " . $totalAmount;

echo "<br/>Pay type:" . $ptype;
echo "<br/>Customer id:" . $suplier_id;

if($ptype == "credit" ) {

    try {
    // Check if the customer_id exists in the database
    $checkQuery = "SELECT * FROM customer_credit WHERE customer_id = :customer_id";
    $stmt = $db->prepare($checkQuery);
    $stmt->bindParam(':customer_id', $suplier_id, PDO::PARAM_INT);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
        // The customer_id exists; update the amount
        $updateQuery = "UPDATE customer_credit SET credit = credit + :credit,customer_name = :customer_name WHERE customer_id = :customer_id";
        $stmt = $db->prepare($updateQuery);
        $stmt->bindParam(':customer_id', $suplier_id, PDO::PARAM_INT);
         $stmt->bindParam(':customer_name', $cname, PDO::PARAM_STR);
        $stmt->bindParam(':credit', $totalAmount, PDO::PARAM_INT);
        $stmt->execute();
        echo "Amount updated successfully.";
    } else {
        // The customer_id doesn't exist; insert a new record
        $insertQuery = "INSERT INTO customer_credit (customer_id,customer_name, credit) VALUES (:customer_id,:customer_name, :credit)";
        $stmt = $db->prepare($insertQuery);
        $stmt->bindParam(':customer_id', $suplier_id, PDO::PARAM_INT);
         $stmt->bindParam(':customer_name', $cname, PDO::PARAM_STR);
        $stmt->bindParam(':credit', $totalAmount, PDO::PARAM_INT);
        $stmt->execute();
        echo "New record inserted successfully.";
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}



}



if($ptype == "cash" ) {

    try {
    // Check if the customer_id exists in the database
    $checkQuery = "SELECT * FROM customer_credit WHERE customer_id = :customer_id";
    $stmt = $db->prepare($checkQuery);
    $stmt->bindParam(':customer_id', $suplier_id, PDO::PARAM_INT);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
        // The customer_id exists; update the amount
        $updateQuery = "UPDATE customer_credit SET cash = cash + :cash,customer_name = :customer_name WHERE customer_id = :customer_id";
        $stmt = $db->prepare($updateQuery);
        $stmt->bindParam(':customer_id', $suplier_id, PDO::PARAM_INT);
         $stmt->bindParam(':customer_name', $cname, PDO::PARAM_STR);
        $stmt->bindParam(':cash', $totalAmount, PDO::PARAM_INT);
        $stmt->execute();
        echo "Amount updated successfully.";
    } else {
        // The customer_id doesn't exist; insert a new record
        $insertQuery = "INSERT INTO customer_credit (customer_id,customer_name, cash) VALUES (:customer_id,:customer_name, :cash)";
        $stmt = $db->prepare($insertQuery);
        $stmt->bindParam(':customer_id', $suplier_id, PDO::PARAM_INT);
         $stmt->bindParam(':customer_name', $cname, PDO::PARAM_STR);
        $stmt->bindParam(':cash', $totalAmount, PDO::PARAM_INT);
        $stmt->execute();
        echo "New record inserted successfully.";
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}



}




if($ptype == "credit" ) {  //Start if statement

try {
    // Create a PDO database connectio
    
    // SQL query with placeholders
    $sql = "INSERT INTO  cust_payhist (customer_id,customer_name,credit,pay_type,date) VALUES (:customer_id, :customer_name, :credit, :pay_type, :date)";
    
    // Prepare the SQL statement
    $stmt = $db->prepare($sql);
    
    // Bind parameters
    $stmt->bindParam(':customer_id', $suplier_id);
    $stmt->bindParam(':customer_name', $cname);
    $stmt->bindParam(':credit', $totalAmount);
    $stmt->bindParam(':pay_type', $ptype);
    $stmt->bindParam(':date', $date);
  
    
    // Execute the query
    $stmt->execute();
    
    echo "Data inserted successfully!";


} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

} // End if statement



if($ptype == "cash" ) {  //Start if statement

try {
    // Create a PDO database connectio
    
    // SQL query with placeholders
    $sql = "INSERT INTO  cust_payhist (customer_id,customer_name,cash,pay_type,date) VALUES (:customer_id, :customer_name, :cash, :pay_type, :date)";
    
    // Prepare the SQL statement
    $stmt = $db->prepare($sql);
    
    // Bind parameters
    $stmt->bindParam(':customer_id', $suplier_id);
    $stmt->bindParam(':customer_name', $cname);
    $stmt->bindParam(':cash', $totalAmount);
    $stmt->bindParam(':pay_type', $ptype);
    $stmt->bindParam(':date', $date);
  
    
    // Execute the query
    $stmt->execute();
    
    echo "Data inserted successfully!";


} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

} // End if statement




?>