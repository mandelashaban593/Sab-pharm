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
$letter = $_GET['letter']; // Get the input letter from the JavaScript

try {
    // Prepare and execute the SQL query to retrieve medicine names starting with the input letter
    $stmt = $db->prepare("SELECT * FROM products  WHERE med_name LIKE :med_name");
    $stmt->execute(['med_name' => $letter . '%']);
    
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    echo json_encode($result);
} catch (PDOException $e) {
    echo 'Error: ' . $e->getMessage();
}
?>
