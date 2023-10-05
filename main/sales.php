<?php 
include('../conn2.php');

    ?>

<!DOCTYPE html>
<html>
<head>
    <title>Product Price Calculator</title>
  
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

select option {
    width: 400px;
}

</style>
<link href="css/bootstrap-responsive.css" rel="stylesheet">

<!-- combosearch box--> 

<script src="vendors/jquery-1.7.2.min.js"></script>
<script src="vendors/bootstrap.js"></script>



<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<!--sa poip up-->

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        function addRow() {
            var table = document.getElementById("productTable");
            var row = table.insertRow(table.rows.length);

            var productCell = row.insertCell(0);
            var quantityCell = row.insertCell(1);
            var priceCell = row.insertCell(2);
            var totalCell = row.insertCell(3);
            var paytypeCell = row.insertCell(4);

            productCell.innerHTML = '<select name="productid[]" onchange="getProductDetails(this)" style="width:400px"><option value="">Select Product</option><?php echo getProductOptions(); ?></select>';
            quantityCell.innerHTML = '<input type="number" name="quantity[]" placeholder="Quantity" onchange="calculateTotal(this)">';
            priceCell.innerHTML = '<input type="number" name="price[]" placeholder="Price" readonly>';
            totalCell.innerHTML = '<input type="number" name="total[]" placeholder="Total" readonly>';
            paytypeCell.innerHTML = '<select name="pay_type[]"  style="width:340px"><option value="cash">Cash</option><option value="credit">Credit</option></select>';
        }

        function getProductDetails(select) {
            var row = select.closest("tr");
            var productId = select.value;

            if (productId) {
                $.ajax({
                    type: "POST",
                    url: "get_product_details.php",
                    data: { product_id: productId },
                    dataType: "json",
                    success: function(data) {
                        if (data) {
               /*             row.cells[1].getElementsByTagName("input")[0].value = data.batch_no;*/
                            row.cells[2].getElementsByTagName("input")[0].value = data.price;
                            calculateTotal(row.cells[2].getElementsByTagName("input")[0]);
                        } else {
                            alert("Product details not found.");
                        }
                    },
                    error: function() {
                        alert("Failed to fetch product details.");
                    }
                });
            } else {
                row.cells[2].getElementsByTagName("input")[0].value = "";
                calculateTotal(row.cells[2].getElementsByTagName("input")[0]);
            }
        }

        function calculateTotal(inputField) {
            var row = inputField.closest("tr");
            var quantity = parseFloat(row.cells[1].getElementsByTagName("input")[0].value);
            var price = parseFloat(row.cells[2].getElementsByTagName("input")[0].value);

            if (!isNaN(quantity) && !isNaN(price)) {
                var total = (price * quantity).toFixed(2);
                row.cells[3].getElementsByTagName("input")[0].value = total;
            }
        }
    </script>

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

</head>

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

<form id="productForm" method="post" action="processpurch.php">
        <table id="productTable" border="1">
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Rate</th>
                <th>Total Price</th>
            </tr>
            <tr>
                <td>
                    <select name="productid[]" onchange="getProductDetails(this)" style="width:400px" id="prod">
                        <option value="">Select Product</option>
                        <?php echo getProductOptions(); ?>
                    </select>
                </td>
                <td><input type="number" name="quantity[]" placeholder="Quantity" onchange="calculateTotal(this)"></td>
                <td><input type="number" name="price[]" placeholder="Price" readonly></td>
                <td><input type="text" name="total[]" readonly></td>
                 <td>
                    <select name="pay_type[]" style="width:340px" >
                       <option value="cash">Cash</option>
                       <option value="credit">Credit</option>
                    </select>
                </td>
            </tr>
        </table>
        
        <button type="button" onclick="addRow()" style="width: 120px;">Add</button>
        <br><br>
    
        <input type="hidden" name="date" value="<?php echo date("m/d/y"); ?>" />
        <input type="hidden" name="invoice" value="<?php echo $finalcode; ?>" />
        <input type="hidden" name="cashier" value="<?php echo $_SESSION['SESS_LAST_NAME']; ?>" />
        <table><tr><td>
        <select name="customer_name" style="width:290px;" class="chzn-seect" required>
        <option>Select Customer</option>
        <?php
        $result = $db->prepare("SELECT * FROM customer");
        $result->execute();
        for($i=0; $row = $result->fetch(); $i++){
        ?>
        <option value="<?php echo $row['customer_name'];?>"><?php echo $row['customer_name']; ?><option>
        <?php
        }
        ?>
        </select></td></tr></table>

        <input type="submit" value="Save" style="width: 120px;">
    </form>

    <?php
  

    function getProductOptions() {
        // Create a PDO database connection (replace with your credentials)
        $hostname = 'localhost';
        $username = 'root';
        $password = '';
        $database = 'sales';


        try {
            $pdo = new PDO("mysql:host=$hostname;dbname=$database", $username, $password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
            die();
        }

        // Retrieve product data from the database
        $productOptions = "";
        $query = "SELECT product_id,batch_no,exp_date,quantity, med_name, price FROM products";
        $stmt = $pdo->query($query);
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {

            $productID = $row['product_id'];
            $productName = $row['med_name'];
            $productPrice = $row['price'];
            $batchNo= $row['batch_no'];
            $exp_date = $row['exp_date'];
            $quantity = $row['quantity'];
            $selectWidth = "400px";
            // Create an option element
            $productOptions .= "<option value=\"$productID\" >$productName | $batchNo | Expiry date: $exp_date | Quantity: $quantity</option>";
        }

        return $productOptions;
    }
    ?>


</div>
</div>
</div>
</body>
<?php include('footer.php');?>
</html>

