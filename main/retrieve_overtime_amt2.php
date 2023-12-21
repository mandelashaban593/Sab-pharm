<?php

// retrieve_overtime.php
require '../conn2.php';


if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Get the POST data
    $emp_id = $_POST["emp_id"];
    $month = $_POST["month"];

    // TODO: Add your query logic here based on $emp_id and $month

    // Example query: Select data from your_table based on emp_id and month
   $query = "SELECT emp_id, DATE_FORMAT(overtime_date, '%b') AS month, amount FROM overtime WHERE emp_id = :emp_id AND DATE_FORMAT(overtime_date, '%b') = :month";
    $statement = $db->prepare($query);
    $statement->bindParam(':emp_id', $emp_id, PDO::PARAM_INT);
    $statement->bindParam(':month', $month, PDO::PARAM_STR);
    $statement->execute();

    // Fetch the result
    $result = $statement->fetchAll(PDO::FETCH_ASSOC);

    // Output the result as JSON
    header('Content-Type: application/json');
    echo json_encode($result);
} else {
    // Handle invalid request method
    http_response_code(405); // Method Not Allowed
    echo json_encode(["error" => "Invalid request method"]);
}

// Close the PDO connection
$pdo = null;


?>
