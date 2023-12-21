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
<meta charset="UTF-8">

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
<?php
function formatMoney($number, $fractional=false) {
if ($fractional) {
    $number = sprintf('%.2f', $number);
}
while (true) {
    $replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1,$2', $number);
    if ($replaced != $number) {
        $number = $replaced;
    } else {
        break;
    }
}
return $number;
}

?>

<div class="container-fluid">
<div class="row-fluid">

<div class="span10">
<div class="contentheader">
<i class="icon-bar-chart"></i>Whole sale Purchases Report
</div>
<ul class="breadcrumb">
<li><a href="index.php">Dashboard</a></li> /
<li class="active">Purchases Report</li>
</ul>

<div style="margin-top: -19px; margin-bottom: 21px;">
<a  href="index.php"><button class="btn btn-default btn-large" style="float: none;"><i class="icon icon-circle-arrow-left icon-large"></i> Back</button></a> <br/>
<a href="#" onclick="window.print()" style="float:right;" class="btn btn-info"><i class="icon-print icon-large"></i> Print List</a>

<?php
if(isset($_GET['invoice_number'])) {
     $invoice_number = $_GET['invoice_number'];
    ?>
<a  href="exportpurchreport.php?invoice_number=<?php echo  $invoice_number; ?>" style="float:right;" class="btn btn-info"><i class="icon-print icon-large"></i> Export</a>
<?php } ?>

</div>



<div class="content" id="content">
<div style="font-weight:bold; text-align:center;font-size:14px;margin-bottom: 15px;">
</div>
<table class="table table-bordered" id="resultTable" data-responsive="table" style="text-align: left;">
<thead>
<tr>
<th> ID</th>
<th> Date </th>
<th> Supplier </th>
<th> Particulars </th>
<th> Invoice number </th>
<th> Name </th>
<th> Expiry Date </th>
<th> Cashier </th>
<th> Batch Number </th>
<th> Quantity </th>
<th> Rate</th>
<th> Total</th>

</tr>
</thead>
<tbody>
<?php
if(isset($_GET['invoice_number'])) {
    $invoice_number = $_GET['invoice_number'];
?>



<?php
    echo "invoice NUMBER<br/>";
    echo $invoice_number;
    $sql = "SELECT * FROM wpurchases_ret WHERE   invoice_number = :invoice_number";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':invoice_number', $invoice_number);
    $stmt->execute();
$ovTotal = 0 ;

foreach ($stmt as $row) { 
?>
<tr class="record" >

    <td><?php echo $row['transaction_id']; ?></td>
<td><?php echo $row['date']; ?> </td>
<td><?php   
$suplier_id = $row['suplier_id'];
$query = mysqli_query($con, "SELECT * FROM supliers WHERE suplier_id='$suplier_id'") or die(mysqli_error($con));
    $row_sup=mysqli_fetch_array($query);
    $suplier_name=$row_sup['suplier_name']; 
echo $suplier_name; ?> </td>

<td><?php echo $row['pay_type']; ?> </td>
<td><?php echo $row['invoice_number']; ?> </td>
<td><?php $stmt = $db->prepare("SELECT med_name FROM wproducts WHERE product_id = ?");
    $stmt->execute([$row['productid']]);
    // Fetch the result
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    // Check if a product was found
    if ($result) {
        $productName = $result['med_name'];
        echo  $productName;
    }  ?> </td>
<td> <?php echo $row['exp_date']; ?> </td>
<td> <?php echo $row['cashier']; ?> </td>
<td> <?php echo $row['batch_no']; ?> </td>
<td> <?php echo $row['quantity']; ?> </td>
<td><?php echo  formatMoney($row['amount']); ?> </td>
<td><?php echo  formatMoney($row['quantity']*$row['amount']); $ovTotal += $row['total']; ?> </td>


</tr>
<?php
}


}
?>
<tr>

<tr>


<td colspan="2"><strong style="font-size: 12px; color: #222222;">


    Total:     <?php


$sql = "SELECT SUM(amount*quantity) AS total FROM wpurchases_ret WHERE   invoice_number = :invoice_number";
$stmt = $db->prepare($sql);
$stmt->bindParam(':invoice_number', $invoice_number);
$stmt->execute();


foreach ($stmt as $row) { 
?>
<?php 
$fgfg=$row['total'];
echo formatMoney($fgfg, true);
}
?>

</strong></td>
</tr>

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