<?php
session_start();
//Connect to mysql server and selecting db
require '../conn2.php';

function createRandomPassword() {
$chars = "003232303232023232023456789";
srand((double)microtime()*1000000);
$i = 0;
$pass = '' ;
while ($i <= 7) {

$num = rand() % 33;

$tmp = substr($chars, $num, 1);

$pass = $pass . $tmp;

$i++;

}
return $pass;
}
$finalcode='RS-'.createRandomPassword();



$cash=0;
if(isset($_POST['balsheettype'])) $balsheettype= $_POST['balsheettype'];

echo "<br/>General ledger  type:";
echo $balsheettype;

if($balsheettype=='wholesale') {


header("location: wbalance_sheet.php?invoice=$finalcode");
exit();
}



if($balsheettype=='retail'){


header("location: retbalance_sheet.php?invoice=$finalcode");
exit();
}




/*Cash is when the customer pays by cash immediately , either partly or on full payment*/




?>