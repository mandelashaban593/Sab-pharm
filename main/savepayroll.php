<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);

//Connect to mysql server and selecting db
require '../conn2.php';
$cash=0;
if(isset($_POST['invoice'])) $invoice= $_POST['invoice'];
if(isset($_POST['cashier'])) $cashier = $_POST['cashier'];
if(isset($_POST['date'])) $date = date($_POST['date']);
if(isset($_POST['pay_type'])) $ptype= $_POST['pay_type'];
if(isset($_POST['fname'])) $fname= $_POST['fname'];
if(isset($_POST['tin'])) $tin = $_POST['tin'];
if(isset($_POST['salary'])) $salary = $_POST['salary'];
if(isset($_POST['bsalary'])) $bsalary = $_POST['bsalary'];
if(isset($_POST['overtime'])) $overtime = $_POST['overtime'];
if(isset($_POST['bonus'])) $bonus=  $_POST['bonus']; 
if(isset($_POST['hllowance'])) $hllowance=  $_POST['hllowance']; 
if(isset($_POST['tllowance'])) $tllowance=  $_POST['tllowance'];
if(isset($_POST['advpayment'])) $advpayment=  $_POST['advpayment'];
if(isset($_POST['payee'])) $payee=  $_POST['payee'];
if(isset($_POST['nssf'])) $nssf=  $_POST['nssf'];
if(isset($_POST['nsalary'])) $nsalary=  $_POST['nsalary'];
if(isset($_POST['empid'])) $empid=  $_POST['empid'];
if(isset($_POST['date'])) $date=  $_POST['date'];



$total = 0;
 echo "invoice: $invoice<br>";

foreach ($empid as $key => $pid) {

       $firstname = $fname[$key];
       $tinno = $tin[$key]; // Use a different variable for quantity
       $sal = $salary[$key];    // Use a different variable for price
        $bsal = $bsalary[$key];  // Use a different variable for product type
        $overt = $overtime[$key];  // Use a different variable for product type
        $bon= $bonus[$key];  // Use a different variable for product type
        $hllow= $hllowance[$key]; 
        $tllow= $tllowance[$key]; 
        $advpay= $advpayment[$key]; 
        $pye= $payee[$key]; 
        $nsf= $nssf[$key]; 
        $nsal= $nsalary[$key]; 
        $eid= $empid[$key]; 

       echo "First Name: $firstname<br>";
       echo "Tin No 2: $tinno<br>";
       echo "Salary 2: $sal<br>";
       echo "Basic sal: $bsal<br><br><br>";
       echo "overtime: $overt<br><br><br>\n";

 
    $sql = "INSERT INTO payroll ( `invoice_number`, `cashier`, `fname`, `tin`, `salary`, `bsalary`, `overtime`, `bonus`, `hllowance`, `tllowance`, `advpayment`, `payee`, `nssf`, `nsalary`, `empid`, `date`, `pay_type`) VALUES ('$invoice','$cashier','$firstname','$tinno','$sal','$bsal','$overt','$bon','$hllow', '$tllow', '$advpay', '$pye', '$nsf', '$nsal', '$eid','$date', '$ptype')";
    $q = mysqli_query($con, $sql) or die(mysqli_error($con));
    
    

 }


 
header("location: payrollprev.php?invoice=$invoice");
exit();




?>