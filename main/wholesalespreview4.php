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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Receipt</title>
      <style>
        body {
            font-family: Arial, sans-serif;
        }

        .receipt {
            width: 80%;
            margin: 0 auto;
        }

        .company-info, .cashier-info, .continuation-message {
            text-align: center;
            margin-bottom: 10px;
        }
        
        .continuation-message{
            text-align: right;
        }

        .cashier-info {
            text-align: right;
            margin-top: 50px;
        }
        .declaration {
            text-align: left;
            margin-top: 50px;
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
            .record {
                page-break-inside: avoid;
            }

            .receipt {
                page-break-before: always;
            }

            .continuation-message, .total-amount {
                display: block;
                position: fixed;
                bottom: 0;
                width: 100%;
            }
        }
    </style>
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
        <div class="receipt">
            <?php
            // Display company information on each page
            if ($page === 1) {
                ?>
                <div class="company-info">
                    <div style="width: 100%; height: 190px;" >
    <div style="width: 900px; float: left;">
    <center><div style="font:bold 25px 'Aleo';">Sales Invoice</div>
    <font class="bold-text">Ojinga Pharmacy  </font><br>
    Jinja,Uganda    <br>    <br>
    </center>
    <div>
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
    <p class="bold-text"><?php echo $customer_name; echo"<br>"; ?></p>
    <?php
    

    echo $address; echo "<br>";



    }
    ?>
    </div>
    </div>
    <div style="width: 136px; float: left; height: 70px;">
    <table cellpadding="3" cellspacing="0" style="font-family: arial; font-size: 12px;text-align:left;width : 100%;border: 0px;">

        <tr  style="border: 0px;">
            <td  style="border: 0px;">Invoice No. :</td>
            <td class="bold-text"  style="border: 0px;"><?php echo $invoice ?></td>
        </tr>
        <tr  style="border: 0px;">
            <td  style="border: 0px;">Date :</td>
            <td class="bold-text"  style="border: 0px;"><?php echo $date ?></td>
        </tr>
    </table>
    
<table style="margin-left:760px;margin-bottom: 90px;border: 0px; border-collapse: collapse; " id="adjsborder">
        <tr style="border: 0px;"><td  style="border: 0px;"><?php
    if(isset($_GET['invoice'])) $id=$_GET['invoice'];
    $result = $db->prepare("SELECT * FROM wsales WHERE invoice_number= :userid LIMIT 1");
    $result->bindParam(':userid', $id);
    $result->execute();
    for($i=0; $rowa = $result->fetch(); $i++){
    $pay_type = $rowa['pay_type'];

    ?>
    <p class="bold-text">Payment Mode: <?php echo $rowa['pay_type']; echo"<br>"; ?></p>
    <p class="bold-text">Cashier: <?php echo $rowa['cashier']; echo"<br>"; ?></p>
    <?php
    

    }
    ?></td></tr></table>

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
                        <td><?php echo $records[$i]['quantity']; ?></td>
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
            // Display continuation message on each page (except the last one)
            if ($page < $totalPages) {
                ?>
                <div class="continuation-message" >
                    <p>Continued... </p></p>
               
                </div>

                <?php
            }



            // Display cashier information and total amount on the last page
            if ($page == $totalPages) {
                ?>
               
                

                 <div class="cashier-info " >
                    
                    <p>Total Amount: <?php echo $totalAmount; ?></p>
                    <div  style="margin-top: 60px;">
                    <p>For Ojinja Pharmacy</p>
                    <p style="padding-top:20px">Authorized  Signatory</p>
                    </div>
                    
                       <div class="declaration" >
                    <p>Declaration:</p>
                    <p> We declare that this invoice shows the actual price of the <br/>goods described and that all particulars are true and correct</p>
                    <p style="padding-top:20px; text-align:center;">This is  a computer generated invoice </p>


                  
                </div>
                
                </div>

              
          

                
                <?php
            }
            ?>
        </div>
        <?php
    }
    ?>

 <div class="print-button">
        <button onclick="window.print()">Print Receipt</button>
    </div>

</body>
</html>
