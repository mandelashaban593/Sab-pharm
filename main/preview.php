<!DOCTYPE html>
<html>
<head>
<?php 
require_once ('auth.php');
require '../conn2.php';
?>
<title>
POS
</title>
 <link href="css/bootstrap.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">
  
  <link rel="stylesheet" href="css/font-awesome.min.css">
    <style type="text/css">
    
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<link href="src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="lib/jquery.js" type="text/javascript"></script>
<script src="src/facebox.js" type="text/javascript"></script>
<script language="javascript">
function Clickheretoprint()
{ 
  var disp_setting="toolbar=yes,location=no,directories=yes,menubar=yes,"; 
      disp_setting+="scrollbars=yes,width=800, height=400, left=100, top=25"; 
  var content_vlue = document.getElementById("content").innerHTML; 
  
  var docprint=window.open("","",disp_setting); 
   docprint.document.open(); 
   docprint.document.write('</head><body onLoad="self.print()" style="width: 800px; font-size: 13px; font-family: arial;">');          
   docprint.document.write(content_vlue); 
   docprint.document.close(); 
   docprint.focus(); 
}
</script>
<?php
$invoice=$_GET['invoice'];
$result = $db->prepare("SELECT * FROM sales WHERE invoice_number= :userid");
$result->bindParam(':userid', $invoice);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$cname=$row['name'];
$invoice=$row['invoice_number'];
$date=$row['date'];
$due_date=$row['due_date'];
$cashier=$row['cashier'];
$cash=$row['cash'];

$pt=$row['type'];
$am=$row['amount'];
if($pt=='cash'){
$due_date=$row['due_date'];
}
}
?>
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
	<div class="span2">
          <div class="well sidebar-nav">
     <ul class="nav nav-list">
<li class="active"><a href="#"><i class="icon-dashboard icon-2x"></i> Dashboard </a></li> 


<?php
$position= $_SESSION['SESS_LAST_NAME'];
if($position=="store"){?>

<li><a href="products.php"><i class="icon-list-alt icon-2"></i> Medicines</a>    
</li>

<li><a href="search_asupplier.php"><i class="icon-group icon-2x"></i><br>  Suppliers </a>  	

<li><a href="https://edoctorug.com/"><i  class="icon-group icon-2x"></i> Edoctorug </a>     
</li>


<?php } ?>



<?php
$position= $_SESSION['SESS_LAST_NAME'];
if($position=="pharmacist"){?>
<li><a href="sales.php?pay_type=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i> Sales</a>  </li> 


<li><a href="ordermedicines.php"><i class="icon-list-alt icon-2"></i> Medicines</a>    
</li>
<li><a href="select_customers.php"><i class="icon-group icon-2x"></i><br>  customers </a>  
</li>

<li><a href="https://edoctorug.com/"><i  class="iicon-group icon-2x"></i> Edoctorug </a>     
</li>





<?php } ?>



<?php
$position= $_SESSION['SESS_LAST_NAME'];
if($position=="admin"){?>
<li><a href="sales.php?pay_type=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i> Sales</a>  </li> 

<li><a href="products.php"><i class="icon-list-alt icon-2"></i> Medicines</a>    
</li>

<li><a href="https://edoctorug.com/"><i  class="icon-list-alt icon-2"></i> Edoctorug </a>     
</li>



</li>	

<?php } ?>	

<?php
$position= $_SESSION['SESS_LAST_NAME'];
if($position=="admin"){?>



<br><br><br><br><br><br>

<?php }?>		
<li>
			 <div class="hero-unit-clock">
		
			<form name="clock">
			<font color="white">Time: <br></font>&nbsp;<input style="width:150px;" type="submit" class="trans" name="face" value="">
			</form>
			  </div>
			</li>
				</ul>                               
          </div><!--/.well -->
        </div><!--/span-->
		
	<div class="span10">
	<a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><button class="btn btn-default"><i class="icon-arrow-left"></i> Back to Sales</button></a>

<div class="content" id="content">
<div style="margin: 0 auto; padding: 20px; width: 900px; font-weight: normal;">
	<div style="width: 100%; height: 190px;" >
	<div style="width: 900px; float: left;">
	<center><div style="font:bold 25px 'Aleo';">Sales Receipt</div>
	Sab Pharmacy	<br>
	Jinja,Uganda	<br>	<br>
	</center>
	<div>
	<?php
	$resulta = $db->prepare("SELECT * FROM customer WHERE customer_name= :a");
	$resulta->bindParam(':a', $cname);
	$resulta->execute();
	for($i=0; $rowa = $resulta->fetch(); $i++){
	$address=$rowa['address'];
	$contact=$rowa['contact'];
	}
	?>


		<?php
	if(isset($_GET['invoice'])) $id=$_GET['invoice'];
	$result = $db->prepare("SELECT * FROM sales WHERE invoice_number= :userid LIMIT 1");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $rowa = $result->fetch(); $i++){
	$customer_id = $rowa['customer_id'];
	$date = $rowa['date'];	

	$query = mysqli_query($con, "SELECT * FROM customer WHERE customer_id='$customer_id'") or die(mysqli_error($con));
	$row=mysqli_fetch_array($query);
	$customer_name=$row['customer_name'];
	$customer_contact=$row['contact'];
	$address=$row['address'];
	
	echo $customer_name; echo"<br>";

	echo $address; echo "<br>";

	}
	?>

	</div>
	</div>
	<div style="width: 136px; float: left; height: 70px;">
	<table cellpadding="3" cellspacing="0" style="font-family: arial; font-size: 12px;text-align:left;width : 100%;">

		<tr>
			<td>OR No. :</td>
			<td><?php echo $invoice ?></td>
		</tr>
		<tr>
			<td>Date :</td>
			<td><?php echo $date ?></td>
		</tr>
	</table>
	
	</div>
	<div class="clearfix"></div>
	</div>
	<div style="width: 100%; margin-top:-70px;">
	<table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 12px;	text-align:left;" width="100%">
		<thead>
			<tr>
				<th width="90"> Medicine</th>
				<th> Invoice </th>
				<th> Cashier </th>
				<th> Customer</th>
				<th> Amount</th>
				<th> Qty </th>
				<th> Total </th>
			</tr>
		</thead>
		<tbody>


				<?php
					
				  if(isset($_GET['invoice'])) $id=$_GET['invoice'];
					$result = $db->prepare("SELECT * FROM sales WHERE invoice_number= :userid");
					$result->bindParam(':userid', $id);
					$result->execute();
					for($i=0; $row = $result->fetch(); $i++){
				?>
				<tr class="record">
				<td><?php  $productid = $row['productid']; $query = mysqli_query($con, "SELECT price,category,med_name,profit,quantity FROM products WHERE product_id= '$productid' ") or die(mysqli_error($con));
					$row2=mysqli_fetch_array($query);
			 		echo $row2['med_name']; ?></td>
				<td><?php echo $row['invoice_number']; ?></td>
				<td><?php echo $row['cashier']; ?></td>
				<td><?php echo $row['name']; ?></td>
				<td><?php echo $row['amount']; ?></td>
				<td><?php echo $row['quantity']; ?></td>
			
				<td>
				<?php
				$dfdf=$row['total'];
				echo formatMoney($dfdf, true);
				?>
				</td>
				</tr>
				<?php
					}
				?>
			
				<tr>
					<td colspan="5" style=" text-align:right;"><strong style="font-size: 12px;">Total: &nbsp;</strong></td>
					<td colspan="2"><strong style="font-size: 12px;">
					<?php
					if(isset($_GET['invoice'])) $sdsd=$_GET['invoice'];
					$resultas = $db->prepare("SELECT sum(amount) FROM sales WHERE invoice_number= :a");
					$resultas->bindParam(':a', $sdsd);
					$resultas->execute();
					for($i=0; $rowas = $resultas->fetch(); $i++){
					$fgfg=$rowas['sum(amount)'];
					echo formatMoney($fgfg, true);
					}
					?>
					</strong></td>
				</tr>
				<?php if($pt=='cash'){
				?>
				<tr>
					<td colspan="5"style=" text-align:right;"><strong style="font-size: 12px; color: #222222;">Cash Tendered:&nbsp;</strong></td>
					<td colspan="2"><strong style="font-size: 12px; color: #222222;">
					<?php
					echo formatMoney($am, true);
					?>
					</strong></td>
				</tr>
				<?php
				}
				?>
				<tr>
					<td colspan="5" style=" text-align:right;"><strong style="font-size: 12px; color: #222222;">
					<font style="font-size:20px;">
					<?php
					if($pt=='cash'){
					echo 'Change:';
					}
					if($pt=='credit'){
					echo 'Due Date:';
					}
					?>&nbsp;
					</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222;">
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
					if($pt=='credit'){
					echo $am;
					}
					if($pt=='cash'){
					echo formatMoney($cash, true);
					}
					?>
					</strong></td>
				</tr>
			
		</tbody>
	</table>
	
	</div>
	</div>
	</div>
	</div>
<div class="pull-right" style="margin-right:100px;">
		<a href="javascript:Clickheretoprint()" style="font-size:20px;"><button class="btn btn-success btn-large"><i class="icon-print"></i> Print</button></a>
		</div>	
</div>
</div>


