<?php
include('../conn2.php');
?>
<html>
<head>
<title>
POS
</title>
<?php
require_once('auth.php');
?>
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
<!--sa poip up-->
<script src="argiepolicarpio.js" type="text/javascript" charset="utf-8"></script>
<script src="js/application.js" type="text/javascript" charset="utf-8"></script>
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

<link rel="stylesheet" type="text/css" href="tcal.css" />
<script type="text/javascript" src="tcal.js"></script>
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
<body>
<?php include('navfixed.php');?>


<div class="container-fluid">
<div class="row-fluid">

<div class="span10">


<div id="maintable">
<div style="margin-top: -19px; margin-bottom: 21px;">
<a  href="index.php"><button class="btn btn-default btn-large" style="float: none;"><i class="icon icon-circle-arrow-left icon-large"></i> Back</button></a>
<input type="button"  class="btn btn-info icon-print icon-large" onclick="printDiv('printableArea')" value="print general ledger!"  style="margin-left:800px;"/>
<script type="text/javascript">
function printDiv(divName) {
var printContents = document.getElementById(divName).innerHTML;
var originalContents = document.body.innerHTML;

document.body.innerHTML = printContents;

window.print();

document.body.innerHTML = originalContents;
}
</script>
</div>

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
/*$d1=$_GET['d1'];
$d2=$_GET['d2']; */
$results = $db->prepare("SELECT sum(amount) FROM sales WHERE curdate BETWEEN :a AND :b");
$results->bindParam(':a', $d1);
$results->bindParam(':b', $d2);
$results->execute();
for($i=0; $rows = $results->fetch(); $i++){
$dsdsd=$rows['sum(amount)'];
echo formatMoney($dsdsd, true);
}
?>


<form name="bwdatesdata" action="" method="post" action="">
<table width="100%" height="117"  border="0">
<tr>
<th width="27%" height="63" scope="row">From Date :</th>
<td width="73%">
<input type="date" name="fdate" class="form-control" id="fdate">
</td>
</tr>
<tr>
<th width="27%" height="63" scope="row">To Date :</th>
<td width="73%">
<input type="date" name="tdate" class="form-control" id="tdate"></td>
</tr>
<tr>
<th width="27%" height="63" scope="row"></th>
<td width="73%">
<button class="btn-primary btn" type="submit" name="submit">Submit</button>
</tr>
</table>
</form>


<div id="printableArea">
<p style="text-align:center">Ojinga Pharmacy</p>
<p style="text-align:center">Kutch road ,West,plot No:95e, Jinja</p>
<p style="text-align:center">Tel: 0704694467</p>
<table class="table table-bordered" id="resultTable" data-responsive="table" style="text-align: left;">
<thead>
<tr>
<th>Invoice Number</th>
<th>Date</th>
<th>Product</th>
<th>Quantity</th>
<th>Amount</th>
<th>Debit</th>
<th>Credit</th>


</tr>
</thead>
<tbody>

<?php
if(isset($_POST['fdate'])) $d1=date($_POST['fdate']);
if(isset($_POST['tdate'])) $d2=date($_POST['tdate']);

/*echo "OOOOOOK";
echo $d2;
*/
// Query to fetch sales records within the date range with debit entries
$salesQuery = "SELECT invoice_number, date, name, quantity,amount, NULL AS Debit, amount AS Credit
               FROM  sales
               WHERE date  BETWEEN :startDate AND :endDate";

// Query to fetch purchases records within the date range with credit entries
$purchasesQuery = "SELECT invoice_number, date, name, quantity, NULL AS Amount, amount AS Debit, NULL AS Credit 
                   FROM purchases_ret
                   WHERE date BETWEEN :startDate AND :endDate";

$ledgerQuery = "$salesQuery UNION ALL $purchasesQuery ORDER BY name";

$stmt = $db->prepare($ledgerQuery);
$stmt->bindParam(':startDate', $d1, PDO::PARAM_STR);
$stmt->bindParam(':endDate',  $d2, PDO::PARAM_STR);
$stmt->execute();
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>


<?php foreach ($rows as $row) { ?>
    <tr>
        <td><?php echo $row['invoice_number']; ?></td>
        <td><?php echo $row['date']; ?></td>
        <td><?php echo $row['name']; ?></td>
        <td><?php echo $row['quantity']; ?></td>
        <td><?php echo formatMoney($row['amount']); ?></td>
        <td><?php echo formatMoney($row['Debit']); ?></td>
        <td><?php echo formatMoney($row['Credit']); ?></td>
    </tr>
<?php } ?>



</tbody>
</table>
</div>
<div class="clearfix"></div>
</div>
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
if(confirm("Are you sure want to delete? There is NO undo!"))
{

$.ajax({
type: "GET",
url: "deletepppp.php",
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
</body>
<?php include('footer.php');?>

</html>