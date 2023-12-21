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

    font-family: Arial, sans-serif;
      }
      .sidebar-nav {
        padding: 9px 0;
      }


   
.balance-sheet {
    display: flex;
    justify-content: space-around;
    margin: 20px;
}

.balance-sheet-section {
    width: 30%;
    border: 1px solid #ccc;
    padding: 10px;
    border-radius: 5px;
}

ul {
    list-style: none;
    padding: 0;
}

li {
    margin: 5px 0;
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
	<div class="contentheader">
			<i class="icon-dashboard"></i> Dashboard
			</div>
			<ul class="breadcrumb">
			<a href="dashboard.php"><li>Dashboard</li></a> /
			<li class="active">Customer's Ledger</li>
			</ul>
<div id="maintable">
<div style="margin-top: -19px; margin-bottom: 21px;">
<a  href="index.php"><button class="btn btn-default btn-large" style="float: none;"><i class="icon icon-circle-arrow-left icon-large"></i> Back</button></a>
<a href="#" onclick="window.print()" style="float:right;" class="btn btn-info"><i class="icon-print icon-large"></i> Print List</a>
</div>

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
 <h1>Balance Sheet</h1>

 <?php

 if(isset($_POST['fdate'])) $d1=date('m/d/y', strtotime($_POST['fdate'])); 
 if(isset($_POST['tdate'])) $d2=date('m/d/y', strtotime($_POST['tdate']));



    echo "From Date: ";
    echo $d1;

	echo "Date To: ";
	echo $d2;


try {
    // Create a PDO instance

    // Query to retrieve balance sheet data within the date range
    $query_assets = "SELECT name, SUM(amount) as total FROM assets WHERE entry_date  BETWEEN :start_date AND :end_date GROUP BY name";
    $query_liabilities = "SELECT name, SUM(amount) as total FROM liabilities WHERE entry_date BETWEEN :start_date AND :end_date GROUP BY name";
    $query_equity = "SELECT name, SUM(amount) as total FROM equity WHERE entry_date  BETWEEN :start_date AND :end_date GROUP BY name";

    // Prepare and execute the queries
    $stmt_assets = $db->prepare($query_assets);
    $stmt_assets->bindParam(':start_date', $d1);
    $stmt_assets->bindParam(':end_date', $d2);
    $stmt_assets->execute();

    $stmt_liabilities = $db->prepare($query_liabilities);
    $stmt_liabilities->bindParam(':start_date', $d1);
    $stmt_liabilities->bindParam(':end_date', $d2);
    $stmt_liabilities->execute();

    $stmt_equity = $db->prepare($query_equity);
    $stmt_equity->bindParam(':start_date', $d1);
    $stmt_equity->bindParam(':end_date', $d2);
    $stmt_equity->execute();
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}


 ?>
<div class="balance-sheet">
        <div class="balance-sheet-section">
            <h2>Assets</h2>
            <ul>
                <?php
                $total_assets = 0;
                while ($row = $stmt_assets->fetch(PDO::FETCH_ASSOC)) {
                    $total_assets += $row['total'];
                ?>
                    <li><?php echo $row['name'] . ': UGX ' . $row['total']; ?></li>
                <?php
                }
                ?>
                <li>Total Assets: UGX <?php echo $total_assets; ?></li>
            </ul>
        </div>
        <div class="balance-sheet-section">
            <h2>Liabilities</h2>
            <ul>
                <?php
                $total_liabilities = 0;
                while ($row = $stmt_liabilities->fetch(PDO::FETCH_ASSOC)) {
                    $total_liabilities += $row['total'];
                ?>
                    <li><?php echo $row['name'] . ': UGX ' . $row['total']; ?></li>
                <?php
                }
                ?>
               <li>Total Liabilities: UGX <?php echo $total_liabilities; ?></li>
            </ul>
        </div>
        <div class="balance-sheet-section">
            <h2>Equity</h2>
            <ul>
                <?php
                $total_equity = 0;
                while ($row = $stmt_equity->fetch(PDO::FETCH_ASSOC)) {
                    $total_equity += $row['total'];
                ?>
                    <li><?php echo $row['name'] . ': UGX ' . $row['total']; ?></li>
                <?php
                }
                ?>
                <li>Total Equity: UGX <?php echo $total_equity; ?></li>
            </ul>
        </div>
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