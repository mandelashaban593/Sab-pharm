<?php 
include('../conn2.php');

?>

<!DOCTYPE html>
<html>
<head>
    <title>POS</title>
  
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

              // Initialize an array to store dynamically added input elements
        let amounts = [];


        function calculateRate(inputField) {
          /*  const amountInput = document.querySelector('input[name="amount[]"]');
               // Get the value from the input field
            const inputValue = parseFloat(amountInput.value);
            // Add the value to the array
            amounts.push(inputValue);*/
            const totalAmountElement = document.getElementById('totalAmount');

            var row = inputField.closest("tr");
            var quantity = parseFloat(row.cells[3].getElementsByTagName("input")[0].value);
            var amount = parseFloat(row.cells[5].getElementsByTagName("input")[0].value);

            // Add the value to the array
            amounts.push(amount);

            if (!isNaN(quantity) && !isNaN(amount)) {
                var rate = (amount/quantity).toFixed(2);
                row.cells[4].getElementsByTagName("input")[0].value = rate;
            }

             // Calculate the total from the 'amounts' array
            const total = amounts.reduce((acc, val) => acc + val, 0);

            // Display the total
            totalAmountElement.textContent = total;

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

<form id="productForm" method="post" action="savepurchases.php" style="width:150px;margin-top: 50px;">


        <table id="productTable" border="1"  style="width:150px">
            <tr>
                <thead>               
                <th>Medicine</th>
                <th>Batch No</th>
                <th>Expiry date</th>
                <th>Quantity</th>
                <th>Rate</th>
                <th>Amount</th>
                  </thead>
                <tbody id="table-body">
                    <tr>
                        <td>
                            <input type="text" name="med_name[]" class="med_name_input" oninput="updateDropdown(this)">
                            <div class="med_name_suggestions"></div>
                        </td>
                        <td>
                            <input type="text" name="batch_no[]" class="batch_no_input" placeholder='Batch No'>
                        </td>
                          <td>
                            <input type="date" name="expiry_date[]" class="expiry_date_input"  placeholder='Expiry date'>
                        </td>
                          <td>
                            <input type="number" name="quantity[]" class="quantity_input" placeholder='Quantity'>
                        </td>
                          <td>
                            <input type="text" name="price[]" class="price_input" placeholder='Rate' style="width:90px">
                        </td>
                          <td>
                            <input type="text" name="amount[]" class="amount_input" placeholder='Amount' onchange="calculateRate(this)">
                        </td>
                        
                        <td>
                            <input type="hidden" name="productid[]" class="productid_input" placeholder='Product id'>
                        </td>
                    </tr>
                </tbody>
            </table>
           
            <button type="button" onclick="addRow()">Add Row</button>
        
         <div id="totalDisplay" style="margin:10px">
            Total: <span id="totalAmount">0</span>
          </div>
        <br><br>
        <input type="hidden" name="cashier" value="<?php echo $_SESSION['SESS_LAST_NAME']; ?>" />
        	 	<table><tr><td>
       <input type="text" name="invoice" placeholder="Enter invoice Number" /></td><td>
       <input type="date" name="date" placeholder="Date" /></td><td>
        <select name="customer_name" style="widt;" class="chzn-seect" required>
        <option>Select Supplier</option>
           <?php
            $position = "supplier";
            $result = $db->prepare("SELECT * FROM supliers");
            $result->execute();
            for($i=0; $row = $result->fetch(); $i++){
        ?>
            <option value="<?php echo $row['suplier_id']; ?>"><?php echo $row['suplier_name']; ?></option>
        <?php
        }
        ?>
        </select></td>
        <td>
        <select  name='pay_type' style='width:90px'><option value='cash'>Cash</option><option value='credit'>Credit</option></select>
    </td></tr></table>
        

        <input type="submit" value="Save" style="width: 120px;">
    </form>




    <script>
        function updateDropdown(input) {
            const suggestionBox = input.parentElement.querySelector('.med_name_suggestions');
            const userInput = input.value; // Get user input
            var row = input.closest("tr");

            // Send the user input to the server to fetch suggestions
            fetch('fetch_medicine_suggestions.php', {
                method: 'POST',
                body: JSON.stringify({ userInput: userInput }),
                headers: {
                    'Content-Type': 'application/json'
                }
            })
            .then(response => response.json())
            .then(data => {
                suggestionBox.innerHTML = ''; // Clear previous suggestions
                data.forEach(suggestion => {
                    const suggestionItem = document.createElement('div');
                    suggestionItem.classList.add('suggestion-item');
                    console.log(suggestion.med_name)
                    suggestionItem.innerText =  suggestion.med_name +  "Batch No: " + suggestion.batch_no + ", Quantity: " + suggestion.quantity; 
                    suggestionItem.onclick = function() {
                        console.log("Med Name:" + suggestion.med_name)
                        console.log('Batch No' + suggestion.batch_no)
                        input.value = suggestion.med_name; // Set the input value
                        row.cells[6].getElementsByTagName("input")[0].value = suggestion.product_id;
                        suggestionBox.innerHTML = ''; // Clear the suggestions
                    };
                    suggestionBox.appendChild(suggestionItem);
                });
            })
            .catch(error => console.error(error));
        }

        function addRow() {
            const tableBody = document.getElementById('table-body');
            const newRow = document.createElement('tr');
            newRow.innerHTML = `
                <td>
                    <input type="text" name="med_name[]" class="med_name_input" oninput="updateDropdown(this)">
                    <div class="med_name_suggestions"></div>
                </td>
                  <td>
                    <input type="text" name="batch_no[]" class="batch_no_input" placeholder='Batch No'>
                </td>
                  <td>
                    <input type="date" name="expiry_date[]" class="expiry_date_input"  placeholder='Expiry date'>
                </td>
                  <td>
                    <input type="number" name="quantity[]" class="quantity_input" placeholder='Quantity'>
                </td>
                  <td>
                    <input type="text" name="price[]" class="price_input" placeholder='Rate' style="width:90px">
                </td>
                  <td>
                    <input type="text" name="amount[]" class="amount_input" placeholder='Amount' onchange="calculateRate(this)">
                </td>
                <td>
                    <input type="hidden" name="productid[]" class="productid_input" placeholder='productid' ">
                </td>
            `;
            tableBody.appendChild(newRow);
        }
    </script>
  


</div>
</div>
</div>
</body>
<?php include('footer.php');?>
</html>

