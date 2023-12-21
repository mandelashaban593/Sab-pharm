<?php 
include('conn2.php');

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

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>PHP GURUKUL | DEMO</title>
<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<link href="css/styles.css" rel="stylesheet">   
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
<div class="navbar-header">   
<h4 style="padding-left: 100px;padding-top: 20px;">PHP GURUKUL | Programming Blog</h4>
</div>
</nav>
<div class="container-fluid">
<!--center-->
<div class="col-sm-8">
<div class="row">
<div class="col-xs-12">
<h3 style="padding-left: 100px;">How to get data from database between two dates in php and MySQL</h3>
<hr >
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
</div>
</div>
<hr>
<div class="row">
<div class="col-xs-12">
<?php
if(isset($_POST['submit']))
{ 
$fdate=$_POST['fdate'];
$tdate=$_POST['tdate'];
?>
<h3 style="padding-left: 100px;color:blue">Report from <?php echo $fdate?> to <?php echo $tdate?></h3>
<hr >
<div class="row">
<table class="table table-bordered" width="100%"  border="0" style="padding-left:40px">
<thead>
<tr>
<th width="13%"> Transaction ID </th>
<th width="13%"> Transaction Date </th>
<th width="20%"> User Name </th>
<th width="16%"> Invoice Number </th>
<th width="18%"> Amount </th>
<th width="13%"> Profit </th>
</tr>
</thead>
<?php
$ret=mysqli_query($con,"select transaction_id,DATE(cur_date)
         AS  date, cashier, invoice_number,amount,profit from  sales  where cur_date  BETWEEN  date('$fdate') AND date('$tdate') ");
$num=mysqli_num_rows($ret);
echo "No records";

if($num>0){
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {
?>
<tbody>
<tr data-expanded="true">

<td>STI-00<?php echo $row['transaction_id']; ?></td>
<td><?php echo $row['date']; ?></td>
<td><?php echo $row['cashier']; ?></td>
<td><?php echo $row['invoice_number']; ?></td>
<td><?php
$dsdsd=$row['amount'];
echo formatMoney($dsdsd, true);

?></td>
<td><?php
$zxc=$row['profit'];
echo formatMoney($zxc, true);
?></td>

</tr>
<?php 
$cnt=$cnt+1;
} } else { ?>
<tr>
<td colspan="8"> No record found against this dates</td>

</tr>
<?php } }?>              
</tbody>
</table>
</div>
</div>
</div>  
</div><!--/center-->
<hr>
</div><!--/container-fluid-->
<!-- script references -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script src="main/js/bootstrap.min.js"></script>
</body>
</html>
