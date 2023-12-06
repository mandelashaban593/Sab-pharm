<?php 
include('../conn2.php');

    ?>

<!DOCTYPE html>
<html>
<head>
    <title>Whole sale</title>
  
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

.error {
    color: red;
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
            var quantity = parseFloat(row.cells[1].getElementsByTagName("input")[0].value);
            var amount = parseFloat(row.cells[3].getElementsByTagName("input")[0].value);

            // Add the value to the array
            amounts.push(amount);

            if (!isNaN(quantity) && !isNaN(amount)) {
                var rate = (amount/quantity).toFixed(2);
                row.cells[2].getElementsByTagName("input")[0].value = rate;
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
    $finalcode='RT-'.createRandomPassword();

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
    <div class="contentheader">
            <i class="icon-dashboard"></i> Dashboard
            </div>
            <ul class="breadcrumb">
            <a href="dashboard.php"><li>Dashboard</li></a> /
            <li class="active">Retail Sale return</li>
            </ul>
<div id="maintable">
<div style="margin-top: -19px; margin-bottom: 21px;">
<a  href="index.php"><button class="btn btn-default btn-large" style="float: none;"><i class="icon icon-circle-arrow-left icon-large"></i> Back</button></a>
</div>
<br />
<br />

<form id="productForm" method="post" action="savesalesreturn.php" style="width:250px;margin-top: 50px;">


        <table id="table-body" border="1"  style="width:150px">
            <tr>
                <th>Item</th>
                <th>Quantity</th>
                <th>Rate</th>
                <th>Amount</th>
                <th></th>
                <th>Batch No</th>
                <th>Expiry Date</th>
                <th>Invoice Number</th>
            </tr>
            <tr>
                
                <td>
                <input type="text" name="med_name[]" class="med_name_input" oninput="updateDropdown(this)" placeholder="Enter invoice Number" required>
                    <div class="med_name_suggestions"></div>
                </td>
                
                <td><input type="number" name="quantity[]" placeholder="Quantity"  class="quantity_input" required oninput="calRate(this); calAmount(this); calTot(this);checkQuantity(this, '1'); validateNumber(this, 'error_quantity1')" value="0" step="any"   >
                <span id="error_quantity1" class="error"></span>
                </td>
                <td><input type="number" name="price[]" placeholder="Rate" class="price_input" required  oninput="calAmount(this); calQuantity(this); calTot(this);validateNumber(this, 'error_price1')"  value="0" id="rate" step="any"  >
                <span id="error_price1" class="error"></span>
                </td>
                <td><input type="number" name="amount[]" class="amount_input" placeholder="Amount"  oninput="calRate(this); calQuantity(this); calTot(this);validateNumber(this, 'error_amount1')" required value="0" id="amount" step="any"  >
                <span id="error_amount1" class="error"></span>
                </td>
               
                <td><input type="hidden" name="productid[]" placeholder="Quantity" class="productid_input" ></td>
                <td><input type="text" name="batch_no[]" placeholder="batch no" class="batch_no_input"></td>
                <td><input type="text" name="expiry_date[]" placeholder="Expiry date" class="expiry_date_input"></td>
                <td><input type="text" name="invoice[]" placeholder="Invoice Number" class="invoice_input"></td>
                <td><input type="hidden" name="transaction_id[]" placeholder="transaction id" class="transaction_id_input"></td>
            </tr>
        </table>
        <button type="button" onclick="addRow()">Add Row</button>






         <div id="totalDisplay" style="margin:10px">
             <td colspan="4">Total: <span id="totalValue">0.00</span></td>
          </div>
        <br><br>
        <input type="hidden" name="return_invoice" value="<?php echo $finalcode; ?>" />
        <input type="hidden" name="cashier" value="<?php echo $_SESSION['SESS_LAST_NAME']; ?>" />
        <table><tr><td>
        <select name="customer_name" style="width:290px;" class="chzn-seect" required>
        <option>Select Customer</option>
        <?php
        $result = $db->prepare("SELECT * FROM customer");
        $result->execute();
        for($i=0; $row = $result->fetch(); $i++){
        ?>
        <option value="<?php echo $row['customer_id'];?>"><?php echo $row['customer_name']; ?><option>
        <?php
        }
        ?>
        </select></td><td><input type="date" name="date" placeholder="Date" required/></td>
        <td>
        <select name="pay_type"  required>
           <option value="cash">Cash</option>
           <option value="credit">Credit</option>
        </select>
        </td></tr></table>

        <input type="submit" value="Save" style="width: 120px;">
    </form>


<script type="text/javascript">
    function calRate(element) {
    
    var row = element.closest("tr");
    var amount = parseFloat(row.cells[3].getElementsByTagName("input")[0].value);
    var quantity = parseFloat(row.cells[1].getElementsByTagName("input")[0].value);
    

    // Add the value to the array
   // amounts.push(amount);

    if (!isNaN(quantity) && !isNaN(amount)) {

        if(amount > 0 && quantity >= 1) {
        var rate = (amount/quantity).toFixed(2);
        row.cells[2].getElementsByTagName("input")[0].value = rate;
        }


    }

   


    // Set the total in the corresponding cell
    //element.parentNode.parentNode.cells[4].getElementsByTagName("input")[0].value = total.toFixed(2);

    // Update the total in the HTML
    calTot();
}

function calQuantity(element) {
    var row = element.closest("tr");
    var amount =  parseFloat(row.cells[3].getElementsByTagName("input")[0].value);
    var rate =  parseFloat(row.cells[2].getElementsByTagName("input")[0].value);
    if(amount > 0 && rate > 0 ) {
        var quantity = amount / rate;
        // Set the Quantity  in the corresponding cell
        row.cells[1].getElementsByTagName("input")[0].value = quantity.toFixed(2);
    }

    // Update the total in the HTML
    calTot();
}

function calAmount(element) {
    var row = element.closest("tr");
    var quantity = parseFloat(row.cells[1].getElementsByTagName("input")[0].value);
    var rate =  parseFloat(row.cells[2].getElementsByTagName("input")[0].value);

    if(quantity >= 1 && rate > 0 ) {
    var amount = quantity * rate;
    // Set the amount in the corresponding cell
    row.cells[3].getElementsByTagName("input")[0].value = amount.toFixed(2);
    }

    
    // Update the total in the HTML
    calTot();
}

function calTot() {
            // Get all input fields with name 'amount[]'
            var amountInputs = document.getElementsByName('amount[]');

            // Initialize total variable
            var total = 0;

            // Iterate through each input field and update the total
            for (var i = 0; i < amountInputs.length; i++) {
                // Parse the value as a float and add it to the total
                total += parseFloat(amountInputs[i].value) || 0;
            }

            // Update the total display
            document.getElementById('totalValue').innerText = total.toFixed(2);
        }



function validateNumber(input, errorId) {
    // Remove leading zeros
    input.value = input.value.replace(/^0+/, '');

    // Replace non-numeric characters
    input.value = input.value.replace(/[^0-9.]/g, '');

    // Ensure there is at most one decimal point
    input.value = input.value.replace(/(\..*)\./g, '$1');

    // Ensure the value is a valid number
    if (isNaN(parseFloat(input.value))) {
        document.getElementById(errorId).innerText = 'Please enter a valid number.';
    } else {
        document.getElementById(errorId).innerText = '';
    }
}



function checkQuantity(inputElement, errorId) {
    var quantityInput = inputElement.value;
    var transactionIdInput = inputElement.parentElement.nextElementSibling.nextElementSibling.nextElementSibling.querySelector('.transaction_id_input');
    var errorId = `error_quantity${errorId}`;

    console.log('errorId value:', errorId);

    $.ajax({
        type: 'POST',
        url: 'cncheck_quantity.php',
        data: { transaction_id: transactionIdInput.value, quantity: quantityInput },
        success: function(response) {
            console.log("Success function called");
            console.log("Response from php backend", response);
            console.log('errorId value: ', errorId);
            document.getElementById(errorId).innerText  = response;
            if (response.trim() === '') {
                // If no error, hide the error element
                document.getElementById(errorId).style.display = 'none';
                console.log("Success function called");
            } else {
                // If there is an error, show the error element
                document.getElementById(errorId).style.display = 'block';
            }

            // rest of your code...

        },
        error: function(xhr, status, error) {
            console.error("Error in AJAX request:", error);
        }
    });
}



</script>
 
 <script>
        function updateDropdown(input) {
            const suggestionBox = input.parentElement.querySelector('.med_name_suggestions');
            const userInput = input.value; // Get user input
            var row = input.closest("tr");

            // Send the user input to the server to fetch suggestions
            fetch('fetch_cnitems_suggestions.php', {
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
                    suggestionItem.innerText =  suggestion.med_name +  "Batch No: " + suggestion.batch_no + ", Quantity: " + suggestion.quantity +  ", Invoice: " + suggestion.invoice_number; ; 
                    suggestionItem.onclick = function() {
                        console.log("Med Name:" + suggestion.med_name)
                        console.log('Batch No' + suggestion.batch_no)
                        input.value = suggestion.med_name; // Set the input value
                        row.cells[4].getElementsByTagName("input")[0].value = suggestion.productid;
                        row.cells[5].getElementsByTagName("input")[0].value = suggestion.batch_no;
                        row.cells[6].getElementsByTagName("input")[0].value = suggestion.expiry_date;
                        row.cells[7].getElementsByTagName("input")[0].value = suggestion.invoice_number;
                        row.cells[8].getElementsByTagName("input")[0].value = suggestion.transaction_id;
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
            const newRowNumber = tableBody.children.length + 1;
            console.log(`Checking element with ID: error_quantity${newRowNumber}`);

            newRow.innerHTML = `
                <td>
                <input type="text" name="med_name[]" class="med_name_input" oninput="updateDropdown(this)" required>
                    <div class="med_name_suggestions"></div>
                </td>
                
                <td>
                    <input type="number" name="quantity[]" placeholder="Quantity" class="quantity_input" required 
                        oninput="calRate(this); calAmount(this); calTot(this); checkQuantity(this, ${newRowNumber});  validateNumber(this, 'error_quantity${newRowNumber}')"
                        value="0" step="any"  >
                    <span id="error_quantity${newRowNumber}" class="error"></span>
                </td>
                
                <td>
                    <input type="number" name="price[]" placeholder="Rate" class="price_input" required 
                        oninput="calAmount(this); calQuantity(this);calTot(this); validateNumber(this, 'error_price${newRowNumber}')"
                        value="0" id="rate" step="any"  >
                    <span id="error_price${newRowNumber}" class="error"></span>
                </td>
                
                <td>
                    <input type="number" name="amount[]" class="amount_input" placeholder="Amount" required 
                        oninput="calRate(this); calQuantity(this); calTot(this); validateNumber(this, 'error_amount${newRowNumber}')"
                        value="0" id="amount" step="any"  >
                    <span id="error_amount${newRowNumber}" class="error"></span>
                </td>
                
                <td><input type="hidden" name="productid[]" placeholder="Quantity" class="productid_input" ></td>
                <td><input type="text" name="batch_no[]" placeholder="batch no" class="batch_no_input"></td>
                <td><input type="text" name="expiry_date[]" placeholder="Expiry date" class="expiry_date_input"></td>
                <td><input type="text" name="invoice[]" placeholder="Invoice Number" class="invoice_input"></td>
                <td><input type="hidden" name="transaction_id[]" placeholder="transaction id" class="transaction_id_input"></td>
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



<!-- example of full mysql pdo source codes  of  document.getQueryselector ('.productid_input') code for the current <tr> element input element in a column <td> js and asign retrived mysql pdo table column value as its value  asumming <input name=" productid[]"  class="productid_input"> is dyanmically generated arrays that is hidden among rows of table tags containg <input name="med_name[]" onlick="updatedropdown(this") > arrays -->