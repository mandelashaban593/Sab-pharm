<?php
/* Database config */

$host ="localhost";
$user ="root";
$password= "";
$dbname = "sales";

$con =mysqli_connect($host,$user,$password,$dbname);

if(!$con){

    echo mysqli_connect_error($con);
}


$db_host        = 'localhost';
$db_user        = 'root';
$db_pass        = '';
$db_database    = 'sales'; 

/* End config */

$db = new PDO('mysql:host='.$db_host.';dbname='.$db_database, $db_user, $db_pass);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>




<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve user input from the request
    $data = json_decode(file_get_contents('php://input'), true);
    $userInput = $data['userInput'];

    try {
   

        // Fetch suggestions from the database (replace with your query)
        $query = "SELECT * FROM products WHERE med_name LIKE :userInput";
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
