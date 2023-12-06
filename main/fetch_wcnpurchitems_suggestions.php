<?php
require '../conn2.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve user input from the request
    $data = json_decode(file_get_contents('php://input'), true);
    $userInput = $data['userInput'];

    try {
   

        // Fetch suggestions from the database (replace with your query)
        $query = "SELECT * FROM  wpurchases_ret  WHERE invoice_number LIKE :userInput and med_name IS NOT NULL and vouch_type='Purchases' ";
        $stmt = $db->prepare($query);
        $stmt->bindValue(':userInput', "%$userInput%", PDO::PARAM_STR);
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

?>