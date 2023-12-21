<?php 
require_once ('auth.php');
require '../conn2.php';
?>

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

<!DOCTYPE html>
<html>
<head>

<title>
POS
</title>
 <link href="css/bootstrap.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">
  
  <link rel="stylesheet" href="css/font-awesome.min.css">
     <style>
        
      .sidebar-nav {
        padding: 9px 0;
      }
     /*  .bottom-left {
            position: absolute;
            bottom: 0;
            left: 0;
        }*/


          .bold-text {
             font:bold 21px 'Aleo';
           }
        body {
             margin: 0; /* Remove default margin */
            font-family: Arial, sans-serif;
            font-weight: normal;
        }


         table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
            font-size: 16px;
        }

        th {
            background-color: #f2f2f2;
        }

        td:first-child {
            position: relative;
        }

        td p {
            margin: 0;
            padding: 5px 0;
        }

        td:not(:first-child) {
            text-align: center;
        }


        .receipt {
            width: 76%;
            margin: 0 auto;
        }

        .company-info, .cashier-info, .continuation-message, .invoice-message {
            text-align: center;
            margin-bottom: 20px;
        }

        .invoice-message{
            margin-bottom: 10px;
        }

         .cashier-info {
            text-align: right;
            margin-top: 50px;
        }
        .declaration {
            text-align: left;
            margin-top: 2px;
        }


        .record-table {
            width: 100%;
            border-collapse: collapse;
        }

        .record {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        .print-button {
            margin-top: 20px;
            text-align: center;
        }

        .total-amount {
            margin-top: 20px;
            text-align: right;
        }

        @media print {
            @page {
                margin: 0; /* Reset default margin */
            }
            .record {
                page-break-inside: avoid;
            }

            .receipt {
                page-break-before: always;
            }

            .continuation-message, .invoice-message {
                display: block;
                position: fixed;
                bottom: 0;
                width: 100%;
            }

            .print-button {
                display: none; /* Hide the print button in print mode */
            }


              /* Print-specific styles */
            body {
                 margin: 0; /* Remove default margin */
                font-weight: normal;
                margin: 1.6cm; /* Set a margin to prevent the URL from appearing */
            }

            table {
                border-collapse: collapse;
            }

            th, td {
                border: 1px solid #000;
                padding: 6px;
                text-align: left;
       
            }

            td:first-child {
                position: relative;
            }

            td p {
                margin: 0;
                padding: 5px 0;
            }

            td:not(:first-child) {
                text-align: center;
            }

            .bold-text {
             font:bold 21px 'Aleo';
            }

            
        }
    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<link href="src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="lib/jquery.js" type="text/javascript"></script>
<script src="src/facebox.js" type="text/javascript"></script>
<script language="javascript">

 function Clickheretoprint() {
        var disp_setting = "toolbar=yes,location=no,directories=yes,menubar=yes,";
        disp_setting += "scrollbars=yes,width=800, height=400, left=100, top=25";

        var content_value = document.documentElement.innerHTML;
        var docprint = window.open("", "", disp_setting);
        docprint.document.open();
        docprint.document.write('<html><head><title>Print</title></head><body style="width: 800px; font-size: 13px; font-family: Arial;">');
        docprint.document.write(content_value);
        docprint.document.write('</body></html>');
        docprint.document.close();
        docprint.focus();
    }
    
</script>
</head>
<body>

    <?php
    // Calculate the number of pages needed
    if(isset($_GET['invoice'])) $id=$_GET['invoice'];
    $id = "RS-3232322";
    $suplier_id="5";
    $invoice = "RS-3232322";
    $result = $db->prepare("SELECT * FROM wsales WHERE invoice_number= :userid");
    $result->bindParam(':userid', $id);
    $result->execute();
    $records = $result->fetchAll(PDO::FETCH_ASSOC);
    $totalRecords = count($records);
    $recordsPerPage = 10;
    $totalAmount = 0;

    $totalPages = ceil($totalRecords / $recordsPerPage);

    for ($page = 1; $page <= $totalPages; $page++) {
        ?>
        <div class="receipt" id="receipt">
            <?php
            // Display company information on each page
            if ($page === 1) {
                ?>
                <div class="company-info">
                    <div style="width: 100%; height: 190px;" >
    <div style="width: 900px; flot: left;">
    <div style="margin-left:220px" ><font style="font:bold 25px 'Aleo';"> Sales Invoice</font>
   <p> <font class="bold-text">Ojinga Pharmacy  </font></p>
     <p>Jinja,Uganda   </p>  
    </div>
    <div style="float:left;">
    <?php
    if(isset($_GET['invoice'])) $id=$_GET['invoice'];
    $result = $db->prepare("SELECT * FROM wsales WHERE invoice_number= :userid LIMIT 1");
    $result->bindParam(':userid', $id);
    $result->execute();
    for($i=0; $rowa = $result->fetch(); $i++){
    $suplier_id = $rowa['customer_id'];
    $date = $rowa['date'];  

    $query = mysqli_query($con, "SELECT * FROM customer WHERE customer_id='$suplier_id'") or die(mysqli_error($con));
    $row=mysqli_fetch_array($query);
    $customer_name=$row['customer_name'];
    $customer_contact=$row['contact'];
    $address=$row['address'];
    ?>
    <p class="bold-txt" style="margin-right:1100px;font-weight: bold;"><?php echo $customer_name;  ?></p>
     <p class="bold-txt" style="margin-right:1100px;"><?php echo $address; ?></p>

       <?php
    if(isset($_GET['invoice'])) $id=$_GET['invoice'];
    $result = $db->prepare("SELECT * FROM wsales WHERE invoice_number= :userid LIMIT 1");
    $result->bindParam(':userid', $id);
    $result->execute();
    for($i=0; $rowa = $result->fetch(); $i++){
    $pay_type = $rowa['pay_type'];

    ?>

   <table style="margin-left:800px;float: rigt; width: 320px;margin-bottom: 30px;"><tr><td style="border: 0px;">Invoice: <font class="bold-text"><?php echo $invoice; ?> </font></td><td style="border: 0px;"> Date: <font class="bold-text"> <?php echo $date; ?> </font></td></tr>
    <tr><td style="border: 0px;">Payment Mode: <?php echo $rowa['pay_type']; ?> </td><td style="border: 0px;"> Cashier: <?php echo $rowa['cashier'];  ?></td></tr></table>
    <?php
    

    }
    ?>


    <?php
    

    



    }
    ?>
    </div>
  
    
    </div>
 
    <div class="clearfix"></div>
    </div>
                </div>
                <?php
            }

            // Display records for the current page
            ?>
       
        <table class="record-table" border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 12px; text-align:left;" width="100%">
        <thead>
            <tr>
                <th style="text-align: left;" > S/No </th>
                <th style="text-align: center;" > Description of Goods</th>
                <th style="text-align: center;" > Qty </th>
                <th style="text-align: center;" > Rate</th>
                <th style="text-align: center;" > Per</th>
                <th style="text-align: center;" > Total </th>
            </tr>
        </thead>
        <tbody>
                <?php
                $startRecord = ($page - 1) * $recordsPerPage;
                $endRecord = min($startRecord + $recordsPerPage, $totalRecords);

                for ($i = $startRecord; $i < $endRecord; $i++) {
                    ?>
                    <tr class="record">
                        <td><?php echo $i+1; ?></td>
                        <td>
                        <p class="bold-text">    <?php  $productid =$records[$i]['productid'];
                             $query = mysqli_query($con, "SELECT price,category,med_name,profit,quantity,expiry_date,sell_type FROM products WHERE product_id= '$productid' ") or die(mysqli_error($con));
                    $row2=mysqli_fetch_array($query);
                    echo $row2['med_name']; ?></p>
                        <p style="margin-left: 25px" >Batch <font class="bold-text" ><?php echo $records[$i]['batch_no']; ?></font></p>
                        <p style="margin-left: 25px">Expiry <?php echo $row2['expiry_date']; ?> </p>

                    </td>
                        <td class="bold-text"><?php echo $records[$i]['quantity']; ?></td>
                        <td><?php echo $records[$i]['amount']; ?></td>
                        <td><?php echo $row2['sell_type']; ?></td>
                        <td class="bold-text">
                        <?php
                        $dfdf=$records[$i]['total'];
                        echo formatMoney($dfdf, true);

                         $totalAmount += $records[$i]['total'];
                        ?>
                        </td>
                    </tr>
                    <?php
                }
                ?>
            </tbody>
            </table>

           
             <?php
        
            // Display cashier information and total amount on the last page
            if ($page == $totalPages) {
                ?>
               
                

                 <div class="cashier-info " >
                    
                    <p>Total Amount: <font class="bold-text"><?php echo $totalAmount; ?></font></p>
                    <div  style="margin-top: 50px;">
                    <p>For Ojinja Pharmacy</p>
                    <p style="padding-top:20px">Authorized  Signatory</p>
                    </div>
                    
                       <div class="declaration" >
                    <p>Declaration:</p>
                    <p> We declare that this invoice shows the actual price of the <br/>goods described and that all particulars are true and correct</p>
                    <p style="padding-top:15px; text-align:center;">This is  a computer generated invoice </p>


                  
                </div>
                
                </div>

              
          

                
                <?php
            }  else if ($page < $totalPages){ 
                ?>
                <div class="continuon-message" >
                    <p style="text-align:right;">Continued...</p>

               
                </div>
                 <div class="invoice-mesage" style="text-align:center;">
                <p>This is a computer-generated invoice.</p>
               </div>

                <?php
            }
            ?>
        </div>

        <?php
    }
    ?>


 <div class="print-button">
        <button ><a style="display: inline-block;
            padding: 10px 15px;
            background-color: #3498db;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;" href="wsaleprint.php?invoice=<?php echo $id; ?>" target="_blank">Print</a></button> 
   <!--      <a href="javascript:Clickheretoprint()" style="font-size:20px;margin-left:800px"><button class="btn btn-success btn-large"><i class="icon-print"></i> Print</button></a> -->
    </div>

</div>
</body>
</html>
