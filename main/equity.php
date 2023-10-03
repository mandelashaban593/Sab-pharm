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
			<li class="active">Equity Lists</li>
			</ul>
<div id="maintable">
<div style="margin-top: -19px; margin-bottom: 21px;">
<a  href="index.php"><button class="btn btn-default btn-large" style="float: none;"><i class="icon icon-circle-arrow-left icon-large"></i> Back</button></a>
<a href="#" onclick="printPage('expenlist');" style="float:right;" class="btn btn-info"><i class="icon-print icon-large"></i> Print List</a>
</div>
<input type="text" name="filter" style="height:35px; margin-top: -1px;" value="" id="filter" placeholder="Search Equity.." autocomplete="off" />
<a rel="facebox" href="addequity.php"><Button type="submit" class="btn btn-info" style="float:right; width:230px; height:35px;" /><i class="icon-plus-sign icon-large"></i> Add Equity</button></a><br><br>

<div id="expenlist">
<table class="table table-bordered" id="resultTable"  data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
			<th width="15%"> Equity Id </th>
			<th width="15%"> Equity Date </th>
			<th width="15%"> Name </th>
			<th width="15%"> Amount </th>
			<th width="15%"> Remarks </th>
			<th width="15%"> Entry Date </th>
			
		</tr>
	</thead>
	<tbody>
		
			<?php
				$result = $db->prepare("SELECT * FROM equity ORDER BY equity_id DESC");
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
			?>	
			<tr class="record">
			<td><?php echo $row['equity_id']; ?></td>
			<td><?php echo $row['entry_date']; ?></td>
			<td><?php echo $row['name']; ?></td>
			<td><?php echo $row['amount']; ?></td>
			<td><?php echo $row['remarks']; ?></td>
			<td>
				<a  title="Click To Edit Equity" rel="facebox" href="editequity.php?equity_id=<?php echo $row['equity_id']; ?>"><button class="btn btn-warning btn-mini"><i class="icon-edit"></i> Edit </button></a> 
				<a rel="facebox" href="view_equity_list.php?equity_id=<?php echo $row['equity_id']; ?>"> <button class="btn btn-primary btn-mini"><i class="icon-search"></i> View </button></a> 
			<a href="#" id="<?php echo $row['equity_id']; ?>" class="delbutton" title="Click To Delete"><button class="btn btn-danger btn-mini"><i class="icon-trash"></i> Delete </button></a></td>
			</tr>
			<?php
				}
			?>
		
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
   url: "delequity.php",
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