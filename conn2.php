<?php
/* Database config */

$host ="localhost";
$user ="root";
$password= "";
$dbname = "sales";

#local machine credentials for phpmyadmin login
#username = pmauser
#password = root

$con =mysqli_connect($host,$user,$password,$dbname);

if(!$con){

	echo mysqli_connect_error($con);
}



$db_host		= 'localhost';
$db_user		= 'root';
$db_pass		= '';
$db_database	= 'sales'; 

/* End config */

$dsn = 'mysql:host=' . $db_host . ';dbname=' . $db_database . ';charset=utf8'; // Set the charset to utf8

$db = new PDO($dsn, $db_user, $db_pass);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


?> 

