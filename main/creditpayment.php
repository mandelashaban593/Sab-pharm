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
	$_SESSION['suplier_id'] = $_POST['suplier_id'];
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
<body>
<?php include('navfixed.php');?>
<div class="container-fluid">
      <div class="row-fluid">
      	
	<div class="span10">
	<div class="contentheader">
			<i class="icon-group"></i> Suppliers
			</div>
			<ul class="breadcrumb">
			<li><a href="index.php">Dashboard</a></li> /
			<li class="active">Suppliers</li>
			</ul>

<div style="margin-top: -19px; margin-bottom: 21px;">
<a  href="index.php"><button class="btn btn-default btn-large" style="float: left;"><i class="icon icon-circle-arrow-left icon-large"></i> Back</button></a>
<a href="#" onclick="window.print()" style="float:right;" class="btn btn-info"><i class="icon-print icon-large"></i> Print List</a>
</div>
<br/><br/><br/><br/>
<div>
	Credit: 
		<?php
	$supid =  $_SESSION['suplier_id'];
		#echo $supid;
		if($_GET['suplier_id']){
			$supid = $_GET['suplier_id'];
			$_SESSION['suplier_id'] = $supid;
		}
	$resulta = $db->prepare("SELECT sum(credit) as total FROM purch_revenue WHERE suplier_id= :suplier_id");
	$resulta->bindParam(':suplier_id', $supid);
	$resulta->execute();
	for($i=0; $rowa = $resulta->fetch(); $i++){
	$total=$rowa['total'];

	if($total > 0){
	echo formatMoney($total);

	}


	if($total < 0){
	echo 0;

	}

}
	?>

</div>
<br/><br/>
<?php 
				$result = $db->prepare("SELECT * FROM supliers ORDER BY suplier_id DESC");
				$result->execute();
				$rowcount = $result->rowcount();
			?>
			<div style="text-align:center;">
			Total Number of Suppliers: <font color="green" style="font:bold 22px 'Aleo';"><?php echo $rowcount;?></font>
			</div>
</div>
<input type="text" name="filter" style="padding:15px;" id="filter" placeholder="Search Customer..." autocomplete="off" />
<a rel="facebox" href="addcreditpay.php"><Button type="submit" class="btn btn-info" style="float:right; width:230px; height:35px;" /><i class="icon-plus-sign icon-large"></i> Add  Payment</button></a><br><br><br><br><br><br><br><br>



<table class="table table-bordered" id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
			<th width="17%"> Date </th>
			
			<th width="17%"> Name </th>
			<th width="10%"> Amount </th>
			<th width="10%"> Payment Mode</th>
		</tr>
	</thead>
	<tbody>
		
				<?php
				$resulta = $db->prepare("SELECT * FROM credit_payhist WHERE suplier_id= :suplier_id");
				$resulta->bindParam(':suplier_id',  $_SESSION['suplier_id']);
				$resulta->execute();
				for($i=0; $rowa = $resulta->fetch(); $i++){
			/*	$total=$rowa['total'];
				echo $total;*/
				?>

				<?php if ($rowa['pay_type'] == 'cash' || $rowa['pay_type'] == 'bank'){ ?>
				<tr class="record">
			<td><?php echo $rowa['date']; ?></td>
			<td><?php echo $rowa['suplier_name']; ?></td>
			<td><?php echo formatMoney($rowa['cash']); ?></td>
			<td><?php echo $rowa['pay_type']; ?></td>

			</tr>

			<?php  }?>


				<?php

				}
				?>

		
	</tbody>
</table>
<div class="clearfix"></div>

</div>
</div>
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
   url: "deletesupplier.php",
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