<?php
include('../conn2.php');
?>
<?php
// Include your PDO database connection code here

// ... Functions to generate daily, weekly, monthly, and range reports (similar to the previous example) ...
// Function to generate daily report
function generateDailyReport($date) {
    global $pdo;
    echo "Date<br/>";
    $date = date('m/d/y', strtotime($date));
    echo $date;
    $sql = "SELECT * FROM sales WHERE curdate = :date";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':date', $date);
    $stmt->execute();
    return $stmt->fetchAll();
}

// Function to generate weekly report
function generateWeeklyReport($start, $end) {
    global $pdo;
    $sql = "SELECT * FROM sales WHERE curdate BETWEEN :start AND :end";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':start', $start);
    $stmt->bindParam(':end', $end);
    $stmt->execute();
    return $stmt->fetchAll();
}

// Function to generate monthly report
function generateMonthlyReport($year, $month) {
    global $pdo;
    $sql = "SELECT * FROM sales WHERE YEAR(curdate) = :year AND MONTH(date) = :month";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':year', $year);
    $stmt->bindParam(':month', $month);
    $stmt->execute();
    return $stmt->fetchAll();
}

// Function to generate range report
function generateRangeReport($start, $end) {
    global $pdo;
    $sql = "SELECT * FROM sales WHERE DATE(curdate) BETWEEN :start AND :end";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':start', $start);
    $stmt->bindParam(':end', $end);
    $stmt->execute();
    return $stmt->fetchAll();
}



/*if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $reportData = "";
    if (isset($_POST['report_type'])) {
        $reportType = $_POST['report_type'];
        
        if ($reportType === 'daily') {
            $date = date($_POST['daily_date']);
            $reportData = generateDailyReport($date);
        } elseif ($reportType === 'weekly') {
            $startDate = date($_POST['weekly_start_date']);
            $endDate = date($_POST['weekly_end_date']);
            $reportData = generateWeeklyReport($startDate, $endDate);
        } elseif ($reportType === 'monthly') {
            $year = date($_POST['monthly_year']);
            $month = date($_POST['monthly_month']);
            $reportData = generateMonthlyReport($year, $month);
        } elseif ($reportType === 'range') {
            $rangeStartDate = date($_POST['range_start_date']);
            $rangeEndDate = date($_POST['range_end_date']);
            $reportData = generateRangeReport($rangeStartDate, $rangeEndDate);
        }

    }

}*/
?>


<!DOCTYPE html>
<html>
<head>
<!-- js -->         
<link href="src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="lib/jquery.js" type="text/javascript"></script>
<script src="src/facebox.js" type="text/javascript"></script>
<script type="text/javascript">
jQuery(document).ready(function($) {
$('a[rel*=facebox]').facebox({
loadingImage : 'src/loading.gif',
closeImage   : 'src/closelabel.png'
})
})
</script>
<title>
POS
</title>
<?php
require_once('auth.php');
?>

<link href="vendors/uniform.default.css" rel="stylesheet" media="screen">
<link href="css/bootstrap.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">

<link rel="stylesheet" href="css/font-awesome.min.css">
<style type="text/css">
body {
padding-top: 60px;
padding-bottom: 40px;
}
.sidebar-nav {
padding: 9px 0;
}
</style>
<link href="css/bootstrap-responsive.css" rel="stylesheet">

<!-- combosearch box--> 

<script src="vendors/jquery-1.7.2.min.js"></script>
<script src="vendors/bootstrap.js"></script>



<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<!--sa poip up-->




<script language="javascript" type="text/javascript">
/* Visit http://www.yaldex.com/ for full source code
and get more free JavaScript, CSS and DHTML scripts! */
<!-- Begin
var timerID = null;
var timerRunning = false;
function stopclock (){
if(timerRunning)
clearTimeout(timerID);
timerRunning = false;
}
function showtime () {
var now = new Date();
var hours = now.getHours();
var minutes = now.getMinutes();
var seconds = now.getSeconds()
var timeValue = "" + ((hours >12) ? hours -12 :hours)
if (timeValue == "0") timeValue = 12;
timeValue += ((minutes < 10) ? ":0" : ":") + minutes
timeValue += ((seconds < 10) ? ":0" : ":") + seconds
timeValue += (hours >= 12) ? " P.M." : " A.M."
document.clock.face.value = timeValue;
timerID = setTimeout("showtime()",1000);
timerRunning = true;
}
function startclock() {
stopclock();
showtime();
}
window.onload=startclock;
// End -->
</SCRIPT>   

</head>
<?php
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
?>
<body>
<?php include('navfixed.php');?>
<?php
$position=$_SESSION['SESS_LAST_NAME'];
if($position=='pharmacist') {
?>
<a href="sales.php?pay_type=cash&invoice=<?php echo $finalcode ?>">Cash</a>

<a href="../index.php">Logout</a>
<?php
}
if($position=='admin') {
?>

<div class="container-fluid">
<div class="row-fluid">

<?php } ?>  



<div class="span10">
<a  href="index.php"><button class="btn btn-default btn-large" style="float: none;"><i class="icon icon-circle-arrow-left icon-large"></i> Back</button></a>
<a href="#" onclick="window.print()" style="float:right;" class="btn btn-info"><i class="icon-print icon-large"></i> Print List</a>
</div>
<br />
<br />


<table class="table table-bordered" id="resultTable" data-responsive="table">
<thead>
<tr>
<th> ID</th>
<th> Date </th>
<th> Invoice number </th>
<th> Cashier </th>
<th> Amount</th>

</tr>
</thead>
<tbody>

<?php
$reportType = $_POST['report_type'];

 if ($reportType === 'daily') {
    $date = date('m/d/y', strtotime($_POST['daily_date']));
    echo "MY DATE";
    echo $date;
    $sql = "SELECT * FROM sales WHERE curdate  = :date";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':date', $date);
    $stmt->execute();
} elseif ($reportType === 'weekly') {
    $startDate = date('m/d/y', strtotime($_POST['weekly_start_date']));
    $endDate = date('m/d/y', strtotime($_POST['weekly_end_date']));
    $sql = "SELECT * FROM sales WHERE curdate BETWEEN :start AND :end";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':start', $startDate);
    $stmt->bindParam(':end',  $endDate);
    $stmt->execute();
} elseif ($reportType === 'monthly') {
    $year =$_POST['monthly_year'];
    $month  = $_POST['monthly_month'];
    $sql = "SELECT * FROM sales WHERE RIGHT(curdate, 2) = :year AND SUBSTRING(curdate, 1, 2) = :month";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':year', $year);
    $stmt->bindParam(':month', $month);
    $stmt->execute();
} elseif ($reportType === 'range') {
    $rangeStartDate =date("y-m-d", strtotime($_POST['range_start_date']));
    $rangeEndDate = date("y-m-d", strtotime($_POST['range_end_date'])); 
    $sql = "SELECT * FROM sales WHERE  DATE_FORMAT(STR_TO_DATE(curdate, '%m/%d/%Y'), '%y-%m-%d')  BETWEEN :start AND :end";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':start', $rangeStartDate);
    $stmt->bindParam(':end', $rangeEndDate);
    $stmt->execute();
}



foreach ($stmt as $row) { 
?>
<tr class="record">
<td><?php echo $row['transaction_id']; ?></td>
<td><?php echo $row['curdate']; ?> </td>
<td><?php echo $row['invoice_number']; ?> </td>
<td> <?php echo $row['cashier']; ?> </td>
<td><?php echo  $row['amount']; ?> </td>
</tr>
<?php
}
?>
<tr>

</tbody>
</table><br>


</div>
</div>
</div>
</body>
<?php include('footer.php');?>
</html>