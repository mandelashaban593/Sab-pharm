<?php
include('../conn2.php');
?>
<html>
<?php
require_once('auth.php');
?>
<head>
<title>
POS
</title>
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


<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<link href="../print.css" rel="stylesheet" media="print">
<link rel="stylesheet" type="text/css" href="tcal.css" />
<script type="text/javascript" src="tcal.js"></script>
<script language="javascript">
function Clickheretoprint()
{ 
var disp_setting="toolbar=yes,location=no,directories=yes,menubar=yes,"; 
disp_setting+="scrollbars=yes,width=700, height=400, left=100, top=25"; 
var content_vlue = document.getElementById("content").innerHTML; 

var docprint=window.open("","",disp_setting); 
docprint.document.open(); 
docprint.document.write('</head><body onLoad="self.print()" style="width: 700px; font-size:11px; font-family:arial; font-weight:normal;">');          
docprint.document.write(content_vlue); 
docprint.document.close(); 
docprint.focus(); 
}
</script>


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
<div class="container-fluid">
<div class="row-fluid">

<div class="span10">
<div class="contentheader">
<i class="icon-bar-chart"></i> Sales Report
</div>
<ul class="breadcrumb">
<li><a href="index.php">Dashboard</a></li> /
<li class="active">Sales Report</li>
</ul>

<div style="margin-top: -19px; margin-bottom: 21px;">
<a  href="index.php"><button class="btn btn-default btn-large" style="float: none;"><i class="icon icon-circle-arrow-left icon-large"></i> Back</button></a>
<a href="#" onclick="window.print()" style="float:right;" class="btn btn-info"><i class="icon-print icon-large"></i> Print List</a>
</div>



    
    <form id="reportForm" method="post" action="purchasesreport.php" style="margin-left: 500px;">
        <h1>Purchases Reports</h1>
        <label for="report_type">Select Report Duration:</label>
        <select name="report_type" id="report_type">
            <option value="daily">Daily</option>
            <option value="weekly">Weekly</option>
            <option value="monthly">Monthly</option>
            <option value="range">Date Range</option>
        </select>
        
        <div id="dateInputs">
            <!-- Date input fields will be added dynamically here -->
        </div>
        <div>
        <select name="suplier_id" style="width:265px; height:30px;">
            <?php
            $result = $db->prepare("SELECT * FROM supliers");
                $result->execute();
                for($i=0; $row = $result->fetch(); $i++){
            ?>
                <option  value="<?php echo $row['suplier_id']; ?>"><?php echo $row['suplier_name']; ?></option>
            <?php
            }
            ?>
        </select><br>
        </div>
        
        <button type="submit">Generate Report</button>
    </form>

    <div id="reportResults">
        <!-- Report data will be displayed here -->
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const reportForm = document.getElementById("reportForm");
            const dateInputs = document.getElementById("dateInputs");
            var currentYear = new Date().getFullYear();

            // Function to toggle date input fields based on the selected report duration
            function toggleDateInputs() {
                const reportType = document.getElementById("report_type").value;
                dateInputs.innerHTML = ""; // Clear existing date inputs

                if (reportType === "daily") {
                    dateInputs.innerHTML = '<label for="daily_date">Select Date (YYYY-MM-DD):</label>' +
                        '<input type="date"  name="daily_date" id="daily_date">';
                } else if (reportType === "weekly") {
                    dateInputs.innerHTML = '<label for="weekly_start_date">Select Start Date (YYYY-MM-DD):</label>' +
                        '<input type="date" name="weekly_start_date" id="weekly_start_date">' +
                        '<label for="weekly_end_date">Select End Date (YYYY-MM-DD):</label>' +
                        '<input type="date"  name="weekly_end_date" id="weekly_end_date">';
                } else if (reportType === "monthly") {
                    dateInputs.innerHTML = '<label for="monthly_year">Select Year:</label>' +
                        '<select name="monthly_year" id="monthly_year"> ' +
                        '<option value="20">2020</option>'+
                        '<option value="21">2021</option>'+
                        '<option value="23">2023</option>'+
                        '<option value="22">2022</option>'+
                        '<option value="24">2024</option>'+
                        '<option value="25">2025</option>'+
                        '<option value="26">2026</option>'+
                        '<option value="27">2027</option>'+
                        '<option value="28">2028</option>'+
                        '<option value="29">2029</option>'+
                        '<option value="30">2030</option>'+
                        '<option value="31">231</option>'+
                        '<option value="32">2032</option>'+
                        '<option value="33">2033</option>'+
                        '<option value="34">2024</option>'+
                        '<option value="35">2025</option>'+
                        '<option value="36">2036</option>'+
                        '<option value="37">2037</option>'+
                        '<option value="38">2038</option>'+
                        '<option value="39">2039</option>'+
                        '<option value="40">2040</option>'+
                        '<option value="41">2041</option>'+
                        '<option value="42">2042</option>'+
                        '<option value="43">2043</option>'+
                        '<option value="44">2044</option>'+
                        '<option value="45">2045</option>'+
                        '<option value="46">2046</option>'+
                         '</select>' +
                         '<label for="monthly_year">Select Year:</label>' +
                        '<select name="monthly_month" id="monthly_month">'+
                        '<option value="01">January</option>'+
                        '<option value="02">February</option>'+
                        '<option value="03">March</option>'+
                        '<option value="04">April</option>'+
                        '<option value="05">May</option>'+
                        '<option value="06">June</option>'+
                        '<option value="07">July</option>'+
                        '<option value="08">August</option>'+
                        '<option value="09">September</option>'+
                        '<option value="10">October</option>'+
                        '<option value="11">November</option>'+
                        '<option value="12">December</option>'+
                        '</select>';
                } else if (reportType === "range") {
                    dateInputs.innerHTML = '<label for="range_start_date">Select Start Date (YYYY-MM-DD):</label>' +
                        '<input type="date" name="range_start_date" id="range_start_date">' +
                        '<label for="range_end_date">Select End Date (YYYY-MM-DD):</label>' +
                        '<input type="date" name="range_end_date" id="range_end_date">';
                }
            }

            // Add event listener to the report type select element
            document.getElementById("report_type").addEventListener("change", toggleDateInputs);

            // Initial call to toggleDateInputs to set up the form
            toggleDateInputs();

            // Add event listener to the form to handle submission via AJAX
          
        });
    </script>



<div class="content" id="content">
<div style="font-weight:bold; text-align:center;font-size:14px;margin-bottom: 15px;">
</div>
<table class="table table-bordered" id="resultTable" data-responsive="table" style="text-align: left;">
<thead>
<tr>
<th> ID</th>
<th> Date </th>
<th> Invoice number </th>
<th> Cashier </th>
<th> Batch Number </th>
<th> Quantity </th>
<th> Amount</th>
<th> Profit</th>

</tr>
</thead>
<tbody>

<?php
if(isset($_POST['report_type'])) {

$reportType = $_POST['report_type'];

 if ($reportType === 'daily') {
    $date = date('m/d/y', strtotime($_POST['daily_date']));
    echo "DATE<br/>";
    echo $date;
    $sql = "SELECT * FROM purchases_ret WHERE   DATE_FORMAT(date, '%m/%d/%y') = :date";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':date', $date);
    $stmt->execute();
} elseif ($reportType === 'weekly') {
    $startDate = date('m/d/y', strtotime($_POST['weekly_start_date']));
    $endDate = date('m/d/y', strtotime($_POST['weekly_end_date']));
    $sql = "SELECT * FROM purchases_ret WHERE DATE_FORMAT(date, '%m/%d/%y') BETWEEN :start AND :end";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':start', $startDate);
    $stmt->bindParam(':end',  $endDate);
    $stmt->execute();
} elseif ($reportType === 'monthly') {
    $year =$_POST['monthly_year'];
    $month  = $_POST['monthly_month'];
    $sql = "SELECT * FROM purchases_ret WHERE RIGHT(DATE_FORMAT(date, '%m/%d/%y'), 2) = :year AND SUBSTRING(DATE_FORMAT(date, '%m/%d/%y'), 1, 2) = :month";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':year', $year);
    $stmt->bindParam(':month', $month);
    $stmt->execute();
} elseif ($reportType === 'range') {
    $rangeStartDate =date("m/d/y", strtotime($_POST['range_start_date']));
    $rangeEndDate = date("m/d/y", strtotime($_POST['range_end_date'])); 
    $sql = "SELECT * FROM purchases_ret WHERE DATE_FORMAT(date, '%m/%d/%y')  BETWEEN :start AND :end";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':start', $rangeStartDate);
    $stmt->bindParam(':end', $rangeEndDate);
    $stmt->execute();
}



foreach ($stmt as $row) { 
?>
<tr class="record">
	<td><?php echo $row['transaction_id']; ?></td>
<td><?php echo $row['date']; ?> </td>
<td><?php echo $row['invoice_number']; ?> </td>
<td> <?php echo $row['cashier']; ?> </td>
<td> <?php echo $row['batch_no']; ?> </td>
<td> <?php echo $row['quantity']; ?> </td>
<td><?php echo  $row['amount']; ?> </td>
<td><?php echo  $row['profit']; ?> </td>
</tr>
<?php
}


}
?>
<tr>

</tbody>
</table><br>
</div>
<div class="clearfix"></div>
</div>
</div>
</div>

</body>
<script src="js/jquery.js"></script>
<script type="text/javascript">
$(function() {


$(".delbutton").click(function(){

//Save the link in a variable called element
var element = $(this);

//Find the id of the link that was clicked
var del_id = element.attr("id");

//Built a url to send
var info = 'id=' + del_id;
if(confirm("Sure you want to delete this update? There is NO undo!"))
{

$.ajax({
type: "GET",
url: "deletesales.php",
data: info,
success: function(){

}
});
$(this).parents(".record").animate({ backgroundColor: "#fbc7c7" }, "fast")
.animate({ opacity: "hide" }, "slow");

}

return false;

});

});
</script>
<?php include('footer.php');?>

</script>

</html>