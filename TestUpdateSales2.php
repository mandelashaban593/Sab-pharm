<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic Table</title>
    <script src="script.js" defer></script>
</head>
<body>
    <form action="process.php" method="post">
        <table id="table-body" border="1" style="width: 500px">
            <tr>
                <th>Medicine</th>
                <th>Quantity</th>
                <th>Rate</th>
                <th>Amount</th>
           
                <th>Batch No</th>
                <th>Expiry Date</th>
            </tr>
            <tr>
                <td>
                    <input type="text" name="med_name[]" class="med_name_input" oninput="updateDropdown(this)" required>
                    <div class="med_name_suggestions"></div>
                </td>
                <td><input type="number" name="quantity[]" placeholder="Quantity" class="quantity_input" required onchange="calRate(this); calAmount(this); calTot(this)" value="0"></td>
                <td><input type="number" name="price[]" placeholder="Rate" class="price_input" required onchange="calQuantity(this); calAmount(this); calTot(this)" value="0"></td>
                <td><input type="number" name="amount[]" class="amount_input" placeholder="Amount" onchange="calRate(this); calQuantity(this); calTot(this)" required value="0"></td>

                <td><input type="text" name="batchno[]" placeholder="Batch No" class="batchno_input"></td>
                <td><input type="text" name="expiry_date[]" placeholder="Expiry Date" class="expiry_date_input"></td>
            </tr>
            <tr>
                <td >Total: <span id="totalValue">0.00</span></td>
            </tr>


        </table>
        <button type="button" onclick="addRow()">Add Row</button>

      

        <button type="submit">Submit</button>
    </form>
<script type="text/javascript"
>
    function calRate(element) {
    var quantity = parseFloat(element.parentNode.parentNode.cells[1].getElementsByTagName("input")[0].value);
    var amount = parseFloat(element.parentNode.parentNode.cells[3].getElementsByTagName("input")[0].value);
/*    var rate = parseFloat(element.value);*/
    var total =amount / quantity;

    // Set the total in the corresponding cell
    element.parentNode.parentNode.cells[2].getElementsByTagName("input")[0].value = total.toFixed(2);

    // Update the total in the HTML
    calTot();
}

function calQuantity(element) {
    var rate = parseFloat(element.parentNode.parentNode.cells[2].getElementsByTagName("input")[0].value);
    var amount = parseFloat(element.parentNode.parentNode.cells[3].getElementsByTagName("input")[0].value);
    var quantity = amount / rate;
   

    // Set the total in the corresponding cell
    element.parentNode.parentNode.cells[1].getElementsByTagName("input")[0].value = quantity.toFixed(2);

    // Update the total in the HTML
    calTot();
}

function calAmount(element) {
    /*var total = parseFloat(element.value);*/
    var quantity = parseFloat(element.parentNode.parentNode.cells[1].getElementsByTagName("input")[0].value);
    var rate = parseFloat(element.parentNode.parentNode.cells[2].getElementsByTagName("input")[0].value);
    var total = quantity * rate;
    // Set the total in the corresponding cell
    element.parentNode.parentNode.cells[3].getElementsByTagName("input")[0].value = total.toFixed(2);


    // Update the total in the HTML
    calTot();
}

function calTot() {
    var totalValue = 0;

    // Loop through all rows to calculate the total
    var table = document.getElementById("table-body");
    for (var i = 1; i < table.rows.length - 1; i++) {
        var totalCell = table.rows[i].cells[3];
        console.log("Number of Cell", totalCell);
        var totalInput = totalCell.getElementsByTagName("input")[0];
        console.log("Total input", totalInput);
        totalValue += parseFloat(totalInput.value) || 0;

        console.log("Total amount", totalValue);
    }

    // Update the total in the HTML
    document.getElementById("totalValue").innerText = totalValue.toFixed(2);
}

/*function calTot() {
    var row = inputField.closest("tr");
    var quantity = parseFloat(row.cells[1].getElementsByTagName("input")[0].value);
    var price = parseFloat(row.cells[2].getElementsByTagName("input")[0].value);

    if (!isNaN(quantity) && !isNaN(price)) {
        var total = (price * quantity).toFixed(2);
        row.cells[3].getElementsByTagName("input")[0].value = total;
    }
}*/



function updateDropdown(element) {
    // Implementation of updateDropdown function
    console.log("updateDropdown called");
    // Add your logic here
}

function addRow() {
    // Implementation of addRow function
    console.log("addRow called");

    // Create a new row
    var table = document.getElementById("table-body");
    var newRow = table.insertRow(table.rows.length - 1);

    // Add cells to the new row
    var cells = [];
    for (var i = 0; i < 6; i++) {
        cells[i] = newRow.insertCell(i);
    }

    // Add input elements to the new row
    cells[0].innerHTML = '<input type="text" name="med_name[]" class="med_name_input" oninput="updateDropdown(this)" required>';
    cells[1].innerHTML = '<input type="number" name="quantity[]" placeholder="Quantity" class="quantity_input" required onchange="calRate(this); calAmount(this); calTot(this)" value="0">';
    cells[2].innerHTML = '<input type="number" name="price[]" placeholder="Rate" class="price_input" required onchange="calQuantity(this); calAmount(this); calTot(this)" value="0">';
    cells[3].innerHTML = '<input type="number" name="amount[]" class="amount_input" placeholder="Amount" onchange="calRate(this); calQuantity(this); calTot(this)" required value="0">';
    cells[4].innerHTML = '<input type="text" name="batch_no[]" placeholder="Batch No" class="batch_no_input">';
   cells[5].innerHTML = '<input type="text" name="expiry_date[]" placeholder="Expiry Date" class="expiry_date_input">';
}


</script>

</body>
</html>

