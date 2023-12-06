<?php 
ob_start();
/* Database config */
error_reporting(E_ALL);
ini_set('display_errors', 1); 
require '../conn2.php';
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
<script src="jeffartagame.js" type="text/javascript" charset="utf-8"></script>
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


function printPage(id) {
var html="<html>";
html+= document.getElementById(id).innerHTML;
html+="</html>";
var printWin = window.open('','','left=0,top=0,width=1,height=1,toolbar=0,scrollbars=0,status =0');
printWin.document.write(html);
printWin.document.close();
printWin.focus();
printWin.print();
printWin.close();
}


</script>
</head>
<?php


function addCommaAfterThousand($amount) {
    // Convert the number to a string
    $amount_str = strval($amount);

    // Split the string into whole and decimal parts (if any)
    $parts = explode('.', $amount_str);

    // Add a comma after every three digits in the whole part
    $whole_part = number_format($parts[0], 0, '', ',');

    // Reassemble the parts, including the decimal part (if any)
    if (isset($parts[1])) {
        $formatted_amount = $whole_part . '.' . $parts[1];
    } else {
        $formatted_amount = $whole_part;
    }

    return $formatted_amount;
}




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

<script>
function sum() {
var txtFirstNumberValue = document.getElementById('txt1').value;
var txtSecondNumberValue = document.getElementById('txt2').value;
var result = parseInt(txtFirstNumberValue) - parseInt(txtSecondNumberValue);
if (!isNaN(result)) {
document.getElementById('txt3').value = result;

}

var txtFirstNumberValue = document.getElementById('txt11').value;
var result = parseInt(txtFirstNumberValue);
if (!isNaN(result)) {
document.getElementById('txt22').value = result;				
}

var txtFirstNumberValue = document.getElementById('txt11').value;
var txtSecondNumberValue = document.getElementById('txt33').value;
var result = parseInt(txtFirstNumberValue) + parseInt(txtSecondNumberValue);
if (!isNaN(result)) {
document.getElementById('txt55').value = result;

}

var txtFirstNumberValue = document.getElementById('txt4').value;
var result = parseInt(txtFirstNumberValue);
if (!isNaN(result)) {
document.getElementById('txt5').value = result;
}

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

<body>
<?php include('navfixed.php');?>
<div class="container-fluid">
<div class="row-fluid">

<div class="span10">
<div class="contentheader">
<i class="icon-table"></i> Medicines
</div>
<ul class="breadcrumb">
<li><a href="index.php">Dashboard</a></li> /
<li class="active">Medicines</li>
</ul>


<div style="margin-top: -19px; margin-bottom: 21px;">
<a  href="index.php"><button class="btn btn-default btn-large" style="float: left;"><i class="icon icon-circle-arrow-left icon-large"></i> Back</button></a>
<a href="#" onclick="printPage('prodlist');" style="float:right;" class="btn btn-info"><i class="icon-print icon-large"></i> Medicine List</a>

<?php 
require '../conn2.php';
$result = $db->prepare("SELECT * FROM wproducts ORDER BY quantity DESC");
$result->execute();
$rowcount = $result->rowcount();	
?>

<?php 
$result = $db->prepare("SELECT * FROM wproducts where qty < 10 ORDER BY product_id DESC");
$result->execute();
$rowcount123 = $result->rowcount();

?>
<div style="text-align:center;">
Total Number of Products:  <font color="green" style="font:bold 22px 'Aleo';">[<?php echo $rowcount;?>]</font>
</div>

<div style="text-align:center;">
<font style="color:rgb(255, 95, 66);; font:bold 22px 'Aleo';">[<?php echo $rowcount123;?>]</font> Products are below QTY of 10 
</div>
</div>


<input type="text" style="padding:15px;" name="filter" value="" id="filter" placeholder="Search Product..." autocomplete="off" />
<a rel="facebox" href="addwproduct.php"><Button type="submit" class="btn btn-info" style="float:right; width:230px; height:35px;" /><i class="icon-plus-sign icon-large"></i> Add Item</button></a><br><br><br/>
<a rel="facebx" href="wcategory.php"><Button type="submit" class="btn btn-info" style="float:right; width:230px; height:35px;" /><i class="icon-plus-sign icon-large"></i> Category</button></a><br><br><br/>
<a rel="facbox" href="wunit.php"><Button type="submit" class="btn btn-info" style="float:right; width:230px; height:35px;" /><i class="icon-plus-sign icon-large"></i> Unit</button></a><br><br><br/>
<a rel="facebox" href="upwsaleprods.php"><Button type="submit" class="btn btn-info" style="float:right; width:230px; height:35px;" /><i class="icon-plus-sign icon-large"></i> Upload products</button></a><br><br><br/>
<a  href="exportwproducts.php" style="float:right;" class="btn btn-info"><i class="icon-print icon-large"></i> Export Products</a>


<p style="text-align:center">Ojinga Pharmacy</p>
<p style="text-align:center">Kutch road ,West,plot No:95e, Jinja</p>
<p style="text-align:center">Tel: 0704694467</p>
<div id="prodlist">

<table class="hoverTable" id="resultTable" data-responsive="table" style="text-align: left;">
<thead>
<tr>
<th width="12%"> Medicine</th>
<th width="13%"> Date </th>
<th width="13%"> Batch No</th>
<th width="13%"> Category</th>
<th width="13%"> Inventory</th>
<th width="13%"> Particulars</th>
<th width="13%"> Expiry Date  </th>
<th width="14%"> Quantity</th>
<th width="13%"> Selling price </th>
<th width="13%"> Stock value</th>
<th width="8%"> Action </th>




</tr>
</thead>
<tbody>

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

$status = 'Active';
$result = $db->prepare("SELECT *, price * qty as total FROM wproducts  WHERE status = :status AND med_name IS NOT NULL");
// Bind the parameter
$result->bindParam(':status', $status, PDO::PARAM_STR);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$total=$row['total'];
$availableqty=$row['qty'];
if ($availableqty < 10) {
echo '<tr class="alert alert-warning record" style="color: #fff; background:rgb(255, 95, 66);">';
}
else {
echo '<tr class="record">';
}
?>
<td><?php echo $row['med_name']; ?></td>
<td><?php echo $row['reg_date']; ?></td>
<td><?php echo $row['batch_no']; ?></td>
<td><?php echo $row['category']; ?></td>
<td><?php echo $row['inventory']; ?></td>
<td><?php echo $row['sell_type']; ?></td>
<td><?php echo $row['expiry_date']; ?></td>
<td><?php echo $row['quantity']; ?></td>
<td><?php
$pprice=$row['price'];
echo formatMoney($pprice, true);
?></td>
<td><?php echo  formatMoney($row['stockval']); ?></td>

<td><a rel="facebox" title="Click to edit the product" href="editwproduct.php?id=<?php echo $row['product_id']; ?>"><button class="btn btn-warning"><i class="icon-edit"></i> </button> </a>
<a href="#" id="<?php echo $row['product_id']; ?>" class="delbutton" title="Click to Delete the product"><button class="btn btn-danger"><i class="icon-trash"></i></button></a></td>
</tr>
<?php
}
?>

<tr>
<td colspan="7" style=" text-align:right;"><strong style="font-size: 12px;"></strong></td>
<td colspan="1"><strong style="font-size: 12px;">Total Quantity: &nbsp;
<?php

$resultas = $db->prepare("SELECT SUM(quantity) AS total_quantity FROM wproducts WHERE status = 'Active'");
$resultas->execute();

for ($i = 0; $rowas = $resultas->fetch(); $i++) {
    $fgfg = $rowas['total_quantity'];
    echo formatMoney($fgfg, true);
}
?>
</strong></td>


<td colspan="1"><strong style="font-size: 12px;">Total Price: &nbsp;
<?php

$resultas = $db->prepare("SELECT SUM(price) AS total_price FROM wproducts WHERE status = 'Active'");
$resultas->execute();

for ($i = 0; $rowas = $resultas->fetch(); $i++) {
    $fgfg = $rowas['total_price'];
    echo formatMoney($fgfg, true);
}
?>
</strong></td>

<td colspan="2"><strong style="font-size: 12px;">Total Stock Value: &nbsp;
<?php

$resultas = $db->prepare("SELECT SUM(stockval) AS total_stockval FROM wproducts WHERE status = 'Active'");
$resultas->execute();

for ($i = 0; $rowas = $resultas->fetch(); $i++) {
    $fgfg = $rowas['total_stockval'];
    echo formatMoney($fgfg, true);
}
?>
</strong></td>

</tr>


</tbody>
</table>
</div>
<div class="clearfix"></div>
</div>
</div>
</div>

<script src="js/jquery.js"></script>
<script type="text/javascript">
$(function() {


$(document).on('keyup','#med_name', 

function(){
var med_name_cap = $("#med_name").val();

$("#med_name").val(med_name_cap.charAt(0).toUpperCase()+med_name_cap.slice(1));

});


$(document).on('keyup','#category', 

function(){
var category_cap = $("#category").val();

$("#category").val(category_cap.charAt(0).toUpperCase()+category_cap.slice(1));

});




$(".delbutton").click(function(){

//Save the link in a variable called element
var element = $(this);

//Find the id of the link that was clicked
var del_id = element.attr("id");

//Built a url to send
var info = 'id=' + del_id;
if(confirm("Sure you want to delete this Product? There is NO undo!"))
{

$.ajax({
type: "GET",
url: "deletewproduct.php",
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