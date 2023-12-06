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
if(isset($_POST['saleledgtype'])) $saleledgtype= $_POST['saleledgtype'];

echo "<br/>General ledger  type:";
echo $saleledgtype;

if($saleledgtype=='wholesale') {


header("location: wsales_ledger.php?invoice=$finalcode");
exit();
}



if($saleledgtype=='retail'){


header("location: retsales_ledger.php?invoice=$finalcode");
exit();
}




/*Cash is when the customer pays by cash immediately , either partly or on full payment*/




?>