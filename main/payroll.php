


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


.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
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

          // Initialize an array to store dynamically added input elements
        let amounts = [];


        function calculateTotal(inputField) {
            const totalAmountElement = document.getElementById('totalAmount');
            var row = inputField.closest("tr");
            var quantity = parseFloat(row.cells[1].getElementsByTagName("input")[0].value);
            var price = parseFloat(row.cells[2].getElementsByTagName("input")[0].value);
            console.log("calculate total called");
            console.log("Quantity: ");
            console.log(quantity);
            console.log("Price: ");
            console.log(price);


            if (!isNaN(quantity) && !isNaN(price)) {
                var total = (price * quantity).toFixed(2);
                console.log("Total");
                console.log(total);
                row.cells[3].getElementsByTagName("input")[0].value = total;

                var totalGrand = (price * quantity);
                amounts.push(totalGrand);
                console.log(amounts);
                    // Calculate the total from the 'amounts' array
                const totalAmount = amounts.reduce((acc, val) => acc + val, 0);

                // Display the total
                totalAmountElement.textContent = totalAmount;
                
            }
        }


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
    <div class="contentheader">
            <i class="icon-dashboard"></i> Dashboard
            </div>
            <ul class="breadcrumb">
            <a href="dashboard.php"><li>Dashboard</li></a> /
            <li class="active">Pay Roll</li>
            </ul>
<div id="maintable">
<div style="margin-top: -19px; margin-bottom: 21px;">
<a  href="index.php"><button class="btn btn-default btn-large" style="float: none;"><i class="icon icon-circle-arrow-left icon-large"></i> Back</button></a>
</div>
</div>
<br />

 <div class="masthead" style="margin-left:500px">
        <h3>
          <b>Pay Roll</b>
         
        </h3>
      </div>


<div class="topnav">
  <a class="active" href="payroll.php">Payroll</a>
  <a href="overtime.php" >Overtime</a>
  <a href="medallowance.php">Medical Allowance</a>
  <a href="advancepay.php" >Advance Payment</a>
</div>



<form id="productForm" method="post" action="savepayroll.php" style="width:250px;margin-top: 50px;">


        <table id="table-body" border="1"  style="width:450px">
            <tr>
                <th>First Name</th>
                <th> Tin Number</th>
                <th>Salary</th>
                <th>Basic Salary</th>
                <th>Overtime</th>
                <th>Bonus</th>
                <th >House Allowance</th>
                <th>Transport Allowance</th>
                <th>Advanced Payment</th>
                 <th>Payee</th>
                 <th>Nssf</th>
                 <th>Net Salary</th>
        
                <th></th>
            
            </tr>
            <tr>
                
                <td>
                <input type="text" name="fname[]" class="fname_input" oninput="updateDropdown(this)">
                    <div class="fname_suggestions"></div>
                </td>
                <td><input type="text" name="tin[]" placeholder="Tin" class="tin_input" readonly style="width:90px" required></td>
                <td><input type="number" name="salary[]" class="salary_input" placeholder="Salary"  style="width:100px" required></td>
                 <td><input type="number" name="bsalary[]" class="bsalary_input" placeholder="Basic salary" style="width:100px" required></td>
                 <td><input type="number" name="overtime[]" class="overtime_input" placeholder="Overtime" style="width:100px" required></td>
                 <td><input type="number" name="bonus[]" class="bonus_input" placeholder="Bonus" style="width:100px" required value="0"></td>
                 <td><input type="number" name="hllowance[]" class="hllowance_input" placeholder="House Allowance" style="width:130px" required></td>
                 <td><input type="number" name="tllowance[]" class="tllowance_input" placeholder="Transport Allowance" style="width:100px"></td>
                 <td><input type="number" name="advpayment[]" class="advpayment_input" placeholder="Advanced payment" style="width:100px" required></td>
                  <td><input type="number" name="payee[]" class="payee_input" placeholder="Payee" style="width:100px" required></td>
                   <td><input type="number" name="nssf[]" class="nssf_input" placeholder="NSSF" style="width:100px" required></td>
                    <td><input type="number" name="nsalary[]" class="nsalary_input" placeholder="Net Salary" style="width:100px" required></td>
                <td><input type="hidden" name="empid[]" placeholder="Employee id" class="empid_input" style="width:100px" required></td>
                <td><input type="hidden" name="pay_date[]" placeholder="Pay Date" class="pay_date_input" style="width:100px"  value="<?php echo date ('M'); ?>" required></td>

            </tr>
        </table>
        <button type="button" onclick="addRow()">Add Row</button>






       <!--   <div id="totalDisplay" style="margin:10px">
            Total: <span id="totalAmount">0</span>
          </div> -->
        <br><br>
        <input type="hidden" name="invoice" value="<?php echo $finalcode; ?>" />
        <input type="hidden" name="cashier" value="<?php echo $_SESSION['SESS_LAST_NAME']; ?>" />
        <table><tr><td><input type="date" name="date" placeholder="Date" /></td>
        <td>
        <select name="pay_type"  >
           <option value="cash">Cash</option>
           <option value="Bank">Bank</option>
           <option value="online">Online</option>
        </select>
        </td></tr></table>

        <input type="submit" value="Save" style="width: 120px;">
    </form>




 
 <script>


let data;
 

function retrieveData(emp_id, month) {
    return new Promise((resolve, reject) => {
        fetch('retrieve_overtime_amt.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: `emp_id=${emp_id}&month=${month}`,
        })
        .then(response => response.json())
        .then(data => {
            // Assuming data is an object with 'overtime' and 'advancepay' properties
            if (data && data.overtime && data.advancepay) {
                const overtimeData = data.overtime;
                const advancepayData = data.advancepay;

                // Process the data as needed
                console.log("Overtime Data:", overtimeData);
                console.log("Advancepay Data:", advancepayData);
               const processedData = { overtimeData, advancepayData };

                console.log("Combined json data from php pdo ", processedData);

                resolve(processedData);

            } else {
                // Resolve with a default value or handle the case where data is incomplete
                resolve({ overtime: [], advancepay: [] });
            }
        })
        .catch(error => {
            // Reject the Promise on error
            reject(error);
        });
    });
}



          function calculatePayee(bsal) {
              let payee;
              let chargdiff = 0;

              if (bsal < 235000 && bsal > 0) {
                  payee = 0;
              } else if (bsal > 235000 && bsal < 335000) {
                  chargdiff = bsal - 235000;
                  payee = chargdiff * 0.1;
              } else if (bsal > 335000 && bsal < 410000) {
                  chargdiff = bsal - 335000;
                  payee = 10000 + chargdiff * 0.2;
              } else if (bsal > 410000) {
                  chargdiff = bsal - 410000;
                  payee = 25000 + chargdiff * 0.2;
              }

              return payee;
          }

          function calculateNssf(bsal) {
            let nssf =0;
            nssf = bsal*0.05 + bsal*0.1;
            return nssf
          }


            
            // Additional logic as needed
        

  




        function updateDropdown(input) {
            const suggestionBox = input.parentElement.querySelector('.fname_suggestions');
            const userInput = input.value; // Get user input
            var row = input.closest("tr");
            var overt_amt = 0;

            // Send the user input to the server to fetch suggestions
            fetch('fetch_emp_suggestions.php', {
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
                    console.log(suggestion.fname)
                    suggestionItem.innerText =  suggestion.fname +  " " + suggestion.lname + ", Emp id: " + suggestion.emp_id; 
                    suggestionItem.onclick = function() {
                        console.log("First Name:" + suggestion.fname)
                        console.log('Last Name' + suggestion.lname)
                        input.value = suggestion.fname; // Set the input value
                        row.cells[1].getElementsByTagName("input")[0].value = suggestion.tin;
                        row.cells[2].getElementsByTagName("input")[0].value = suggestion.sal;
                        row.cells[6].getElementsByTagName("input")[0].value = suggestion.hallowance;
                        row.cells[7].getElementsByTagName("input")[0].value = suggestion.transpallowance;
                        row.cells[12].getElementsByTagName("input")[0].value = suggestion.emp_id;
                       // calculateTotal(row.cells[2].getElementsByTagName("input")[0]);
                        bonus = row.cells[5].getElementsByTagName("input")[0].value;
                        pay_date = row.cells[13].getElementsByTagName("input")[0].value;
                        console.log('Bonus ' + bonus);
                        console.log('Pay month' + pay_date);

                        retrieveData(suggestion.emp_id, pay_date)
                          .then(data => {
                              // Handle the combined data here
                              console.log('Combined Data:', data.overtimeData);
                              console.log(' Data Advance pay:', data.advancepayData);
                              overt_amt =data.overtimeData[0].amount;
                              console.log("Overtime amount: ", data.overtimeData[0].amount);

                              let totovertime = 0; // Initialize totamt
                              data.overtimeData.forEach(res => {
                                  totovertime += parseFloat(res.amount);
                              });

                              console.log("Total Overtime: ", totovertime);


                              let totadvpay = 0; // Initialize totamt
                              data.advancepayData.forEach(res => {
                                  totadvpay += parseFloat(res.pay_amount);
                              });

                              console.log("Total Advancepay: ", totadvpay);

                              row.cells[4].getElementsByTagName("input")[0].value= totovertime;
                              row.cells[8].getElementsByTagName("input")[0].value= totadvpay;
                              let bsal;
                              bsal = (suggestion.hallowance + suggestion.transpallowance + totovertime+suggestion.sal) -totadvpay;
                              row.cells[3].getElementsByTagName("input")[0].value= totadvpay;
                              let payee;
                              payee = calculatePayee(bsal);
                              console.log("payee ", payee);
                              row.cells[9].getElementsByTagName("input")[0].value= payee;
                              let nssf=0;
                              nssf = calculateNssf(bsal);
                              console.log("Nssf ", nssf);
                              row.cells[10].getElementsByTagName("input")[0].value= nssf;
                              let netsal =0;
                              netsal = bsal - (payee + nssf);
                              row.cells[11].getElementsByTagName("input")[0].value= netsal;




                          })
                          .catch(error => {
                              // Handle the error here
                              console.error('Error:', error);
                          });



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
                <input type="text" name="fname[]" class="fname_input" oninput="updateDropdown(this)">
                    <div class="fname_suggestions"></div>
                </td>
                <td><input type="text" name="tin[]" placeholder="Tin" class="tin_input" readonly style="width:90px" required></td>
                <td><input type="number" name="salary[]" class="salary_input" placeholder="Salary"  style="width:100px" required></td>
                 <td><input type="number" name="bsalary[]" class="bsalary_input" placeholder="Basic salary" style="width:100px" required></td>
                 <td><input type="number" name="overtime[]" class="overtime_input" placeholder="Overtime" style="width:100px" required></td>
                 <td><input type="number" name="bonus[]" class="bonus_input" placeholder="Bonus" style="width:100px" required value="0"></td>
                 <td><input type="number" name="hllowance[]" class="hllowance_input" placeholder="House Allowance" style="width:130px" required></td>
                 <td><input type="number" name="tllowance[]" class="tllowance_input" placeholder="Transport Allowance" style="width:100px"></td>
                 <td><input type="number" name="advpayment[]" class="advpayment_input" placeholder="Advanced payment" style="width:100px" required></td>
                  <td><input type="number" name="payee[]" class="payee_input" placeholder="Payee" style="width:100px" required></td>
                   <td><input type="number" name="nssf[]" class="nssf_input" placeholder="NSSF" style="width:100px" required></td>
                    <td><input type="number" name="nsalary[]" class="nsalary_input" placeholder="Net Salary" style="width:100px" required></td>
                <td><input type="hidden" name="empid[]" placeholder="Employee id" class="empid_input" style="width:100px" required></td>
                <td><input type="hidden" name="pay_date[]" placeholder="Pay Date" class="pay_date_input" style="width:100px" value="<?php echo date ('M'); ?>" required></td>

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

