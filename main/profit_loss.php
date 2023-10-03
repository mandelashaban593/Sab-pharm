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
<a href="#" onclick="window.print()" style="float:right;" class="btn btn-info"><i class="icon-print icon-large"></i> Print List</a>
</div>

<br><br/>


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


<p style="text-align:center">Ojinga Pharmacy</p>
<p style="text-align:center">Kutch road ,West,plot No:95e, Jinja</p>
<p style="text-align:center">Tel: 0704694467</p>
<table class="table table-bordered" id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
			
			<th width="15%">Operation  </th>
			<th width="15%">Items  </th>
			<th width="15%"> shs</th>
		
			
			

		</tr>
		
	</thead>
	<tbody>
		
			<?php

  		  if(isset($_POST['fdate'])) $d1=date($_POST['fdate']);
  		  if(isset($_POST['tdate'])) $d2=date($_POST['tdate']);

			/*echo "<br/>From date:". $d1;
				echo "<br/>To date:". $d2;*/

				/*$result = $db->prepare("SELECT * FROM expenses ORDER BY expense_id DESC");
				$result->execute();*/
				$result = $db->prepare("SELECT * FROM expenses WHERE entry_date BETWEEN :a AND :b");
				$result->bindParam(':a', $d1);
				$result->bindParam(':b', $d2);
				$result->execute();

				


				/*$result1 = $db->prepare("SELECT * FROM liabilities ORDER BY transaction_id DESC");
				$result1->execute();*/

				$result1 = $db->prepare("SELECT * FROM liabilities WHERE entry_date BETWEEN :a AND :b");
				$result1->bindParam(':a', $d1);
				$result1->bindParam(':b', $d2);
				$result1->execute();

				

					
			?>
		
			<tr class="record">
			<td></td>
			<td>Equity</td>
			<td><?php
			
			$resulta = mysqli_query($con,"SELECT sum(amount) as value_sum FROM equity  where entry_date BETWEEN '$d1' AND '$d2'  ") or die(mysqli_error($resulta));
			$row_sum = mysqli_fetch_assoc($resulta);
			$sum = $row_sum['value_sum'];
			echo formatMoney($sum, true);

		 ?></td>
	
			</tr>


			<tr class="record">
			<td>Less</td>
			<td>Goods Sold</td>
			<td><?php

			 $resulta = mysqli_query($con,"SELECT sum(price) as value_sum FROM sales  where entry_date BETWEEN '$d1' AND '$d2'  ") or die(mysqli_error($resulta));
			$row_sum = mysqli_fetch_assoc($resulta);
			$sum1 = $row_sum['value_sum'];
			echo formatMoney($sum1, true);
			
			?></td>
	
			</tr>



			<?php
			
					
			?>
		   </tbody>
		   <tbody><tr><td></td><td>Gross profit</td><td><?php $gross_profit=$sum - $sum1; echo formatMoney($gross_profit, true); ?></td></tr></tbody>
		   <thead>
		   	<tr><th>Less</th><th>Expenses</th></tr>
		   </thead>
			<tbody>
			<?php

		

			
				for($i=0; $row = $result->fetch(); $i++){

						
			?>

			<tr class="record">
			<td></td>
			<td><?php echo $row['item']; ?></td>
			<td><?php echo formatMoney($row['amount'], true); ?></td>
			</tr>
			<?php
		}

			?>
		   </tbody>
		  

			
			<?php

			
			?>


			<tbody>
			<tr class="record">
			<td>Net Profit</td>
			
			<td><?php 

			$resulta = mysqli_query($con,"SELECT sum(amount) as value_sum FROM expenses  where entry_date BETWEEN '$d1' AND '$d2'  ") or die(mysqli_error($resulta));
			$row_sum = mysqli_fetch_assoc($resulta);
			$tot_expense = $row_sum['value_sum'];

			$net_profit = $gross_profit -$tot_expense;
			echo formatMoney($net_profit, true);
				
				?></td>
				
			</tr>
			<?php
			


			?>





		
	</tbody>
</table>
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

