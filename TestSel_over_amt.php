<?php

// retrieve_overtime.php
require 'conn2.php';

// Get the POST data
$emp_id = 7;
$month ="Nov";
echo "Month " . month;

// Build and execute the PDO SELECT query

// Fetch data from the overtime table
$query_overtime = "SELECT emp_id, DATE_FORMAT(overtime_date, '%b') AS month, amount FROM overtime WHERE emp_id = :emp_id AND DATE_FORMAT(overtime_date, '%b') = :month";
$statement_overtime = $db->prepare($query_overtime);
$statement_overtime->bindParam(':emp_id', $emp_id, PDO::PARAM_INT);
$statement_overtime->bindParam(':month', $month, PDO::PARAM_STR);
$statement_overtime->execute();

$suggestions = [];
while ($row = $statement_overtime->fetch(PDO::FETCH_ASSOC)) {
    $suggestions[] = $row;
}

// Fetch data from the advancepay table
$query_advancepay = "SELECT emp_id, DATE_FORMAT(payment_date, '%b') AS month, amount AS pay_amount FROM advanced_payment WHERE emp_id = :emp_id AND DATE_FORMAT(payment_date, '%b') = :overtime_month";
$statement_advancepay = $db->prepare($query_advancepay);
$statement_advancepay->bindParam(':emp_id', $emp_id, PDO::PARAM_INT);
$statement_advancepay->bindParam(':month', $month, PDO::PARAM_STR);
$statement_advancepay->execute();

$suggestions_advancepay = [];
while ($row = $statement_advancepay->fetch(PDO::FETCH_ASSOC)) {
    $suggestions_advancepay[] = $row;
}

// Combine the results into a single array
$result = [
    'overtime' => $suggestions,
    'advancepay' => $suggestions_advancepay
];

  // Output the result as JSON
    header('Content-Type: application/json');
    echo json_encode($result);

// Close the PDO connection
$db = null;



?>






