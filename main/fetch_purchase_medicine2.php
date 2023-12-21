<?php
require '../conn2.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve user input from the request
    $data = json_decode(file_get_contents('php://input'), true);
    $userInput = $data['userInput'];

    try {
   

        // Fetch suggestions from the database (replace with your query)
        $query = "
        SELECT DISTINCT med_name, batch_no, quantity, product_id
        FROM products 
        WHERE med_name LIKE :userInput 
        AND (batch_no IS NULL AND quantity = 0) 
        
        UNION

        SELECT  DISTINCT med_name, batch_no, MAX(quantity) as quantity, MAX(product_id) as product_id
        FROM products 
        WHERE med_name LIKE :userInput 
        AND (quantity > 0)
        GROUP BY med_name, batch_no";
        $stmt = $db->prepare($query);
        $stmt->bindValue(':userInput', "$userInput", PDO::PARAM_STR);
        $stmt->execute();
        $suggestions = [];
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $suggestions[] = $row;
        }

        // Return suggestions as JSON
        echo json_encode($suggestions);
    } catch (PDOException $e) {
        echo json_encode([]);
    }
}

