<?php
include('../conn2.php');
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


<form action="incompurchases.php" method="post" >
        <table>
            <tr>
                <td><label for="phone">Product</label><select name="product_id" style="width:265px; height:30px;"  class="chz-lect" required>
									<option>Select a product</option>	
									<?php
									$status = "Approved";
									$result = $db->prepare("SELECT * FROM products WHERE status= :status");
									$result->bindParam(':status', $status);
									$result->execute();
									for($i=0; $row = $result->fetch(); $i++){
									?>ddd
									<option value="<?php echo $row['product_id'];?>"><?php echo $row['med_name']; ?> - <?php echo $row['category']; ?> | Expires at: <?php echo $row['exp_date']; ?></option>



									<?php
									}
									?>
									</select></td>
                <td>
								<label for="phone">Category</label><input type="text" style="width:265px; height:30px;" id="med_name" name="med_name" placeholder="Enter Category"></td>
            </tr><br/>
            <tr>
                <td><label for="phone">Quantity</label><input type="number" name="qty" value="1" min="1" placeholder="Qty" autocomplete="off" style="width:265px; height:30px;"  placeholder="Enter Quantity" / required></td>
                <td><label for="phone">Unit</label><select style="width:265px; height:30px; border-color: #000080" name="sell_type"> 
										<option value="Bot">Bot</option>
										<option value="Stp">Stp</option>
										<option value="Tab">Tab</option>
										<option value="Sachet">Sachet</option>	
										<option value="Unit">Unit</option>
										<option value="Tube">Tube</option>
										</select></td>
            </tr><br/>
            <tr>
                <td><label for="phone">Batch No</label><input type="text" style="width:265px; height:30px;" id="batch_no" name="batch_no" placeholder="Enter Batch No"></td>
                <td><label for="phone">Expiry date</label><input type="date" style="width:265px; height:30px;" id="exp_date" name="exp_date" placeholder="Select Expiry date"></td>
            </tr><br/>
            <tr>
                <td><label for="phone">Invoice No</label><input type="text" style="width:265px; height:30px;" id="invoice" name="invoice" placeholder="Enter Invoice No"></td>
                <td><label for="phone">Date Arrival</label><input type="date" style="width:265px; height:30px;" id="date_arrival" name="invoice_no" placeholder="Enter Date of Arrival"></td></td>
            </tr><br/>
            <tr>
                <td><label for="phone">Selling Rate</label><input type="text" style="width:265px; height:30px;" id="txt1"  name="price" placeholder="Enter Selling Rate" onkeyup="sum();" ></td>
                <td><label for="phone">Original Rate</label><input type="text" style="width:265px; height:30px;" id="txt2"  name="o_price" placeholder="Enter Original Rate" onkeyup="sum();" ></td>
            </tr>
             <tr>
                <td><label for="phone">Profit</label><input type="text" style="width:265px; height:30px;" id="txt3"  name="profit" onkeyup="sum();" ></td>
                <td><label for="phone">Original Rate</label><select name="supplier" style="width:265px; height:30px;"  class="chzn-seect" required>
								<option value="">Select Supplier</option>
								<?php
								$position = "supplier";
								$result = $db->prepare("SELECT * FROM user WHERE position = :position");
								$result->bindParam(':position', $position);
								$result->execute();
								for($i=0; $row = $result->fetch(); $i++){
								?>
								<option value="<?php echo $row['name'];?>"><?php echo $row['name']; ?><option>
								<?php
								}
								?>
								</select></td> <td>   <input type="hidden" name="reg_date" value="<?php echo date("m/d/y"); ?>" />
									<Button type="submit" class="btn btn-info"  style="width:100px; height:30px;margin-top:15px"  /><i class="icon-plus-sign icon-large"></i> Add</button></td>
            </tr>

             

         


        </table>
    </form>


<table class="table table-bordered" id="resultTable" data-responsive="table">
<thead>
<tr>
<th> Date</th>
<th> Invoice </th>
<th> Medicine </th>
<th> Price</th>
<th> Customer </th>
<th> Qty </th>
<th> Price </th>
<th> Total Sales Price </th>
<th> Profit </th>
<th> Action </th>
</tr>
</thead>
<tbody>

<?php
echo $id=$_GET['invoice'];
if(isset($_GET['id'])) $id=$_GET['invoice'];
if(isset($_GET['transaction_id'])) $transaction_id=$_GET['transaction_id'];
if(isset($_GET['sale_price'])) $sale_price=$_GET['sale_price'];
$result = $db->prepare("SELECT * FROM purchase_details WHERE invoice= :invoice");
$result->bindParam(':invoice', $id);
$result->execute();

for($i=1; $row = $result->fetch(); $i++){
?>
<tr class="record">
<td><?php echo $row['reg_date']; ?></td>
<td><?php echo $row['invoice']; ?></td>
<td><?php echo $row['med_name']; ?></td>
<td><?php echo $row['price']; ?></td>
<td><?php echo $row['supplier']; ?></td>
<td><?php echo $row['qty']; ?></td>
<td>
<?php
$ppp=$_GET['sale_price'];
echo formatMoney($ppp, true);
?>
</td>

<td>
<?php
$dfdf=$row['amount'];
echo formatMoney($dfdf, true);
?>
</td>
<td>
<?php
$profit=$row['profit'];
echo formatMoney($profit, true);
?>
</td>
<td width="90"><a href="delete.php?id=<?php echo $row['transaction_id']; ?>&invoice=<?php echo $_GET['invoice']; ?>&pay_type=<?php echo $_GET['pay_type']; ?>&qty=<?php echo $row['qty'];?>&med_name=<?php echo $row['product_code'];?>"><button class="btn btn-mini btn-warning"><i class="icon icon-remove"></i> Cancel </button></a></td>
</tr>
<?php
}
?>
<tr>
<th> </th>
<th>  </th>
<th>  </th>
<th>  </th>

<td> Total Amount: </td>
<td> Total Profit: </td>
<th>  </th>
</tr>
<tr>
<th colspan="4"><strong style="font-size: 12px; color: #222222;">Total:</strong></th>
<td colspan="1"><strong style="font-size: 12px; color: #222222;">
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
$sdsd=$_GET['invoice'];
$transaction_id=$_GET['transaction_id'];
$resultas = $db->prepare("SELECT sum(amount) FROM sales_order WHERE invoice= :a");
$resultas->bindParam(':a', $sdsd);
$resultas->execute();
for($i=0; $rowas = $resultas->fetch(); $i++){
$total=$rowas['sum(amount)'];
echo formatMoney($total, true);
}
?>
</strong></td>
<td colspan="0"><strong style="font-size: 12px; color: #222222;">
<?php 
$resulta = $db->prepare("SELECT sum(profit) FROM sales_order WHERE invoice= :b");
$resulta->bindParam(':b', $sdsd);
$resulta->execute();
for($i=0; $qwe = $resulta->fetch(); $i++){
$total_profit=$qwe['sum(profit)'];
echo formatMoney($total_profit, true);
}
?>

</td>
<th></th>
</tr>

</tbody>
</table><br>
<a rel="facebox" href="checkout2.php?pay_type=<?php echo $_GET['pay_type']?>&invoice=<?php echo $_GET['invoice']?>&total=<?php echo $total ?>&totalprof=<?php echo $_GET['profit'] ?>&transaction_id=<?php echo $_GET['transaction_id'] ?>&customer_name=<?php echo $_GET['customer_name'] ?>&cashier=<?php echo $_SESSION['SESS_FIRST_NAME']?>"><button class="btn btn-success btn-large btn-block"><i class="icon icon-save icon-large"></i>SAVE</button></a>
<div class="clearfix"></div>



</div>
</div>
</div>
</body>
<?php include('footer.php');?>

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
</html>