<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invoice Form</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        function saveRow(rowId) {
            var medName = document.querySelector(`#table-body [data-rowid="${rowId}"] .med_name_input`).value;
            var quantity = document.querySelector(`#table-body [data-rowid="${rowId}"] .quantity_input`).value;
            var price = document.querySelector(`#table-body [data-rowid="${rowId}"] .price_input`).value;
            var amount = document.querySelector(`#table-body [data-rowid="${rowId}"] .amount_input`).value;
            var productId = document.querySelector(`#table-body [data-rowid="${rowId}"] .productid_input`).value;
            var batchNo = document.querySelector(`#table-body [data-rowid="${rowId}"] .batch_no_input`).value;
            var expiryDate = document.querySelector(`#table-body [data-rowid="${rowId}"] .expiry_date_input`).value;

            // Check if all fields are not empty
            if (medName && quantity && price && amount && productId && batchNo && expiryDate) {
                $.ajax({
                    type: 'POST',
                    url: 'save_data.php',
                    data: {
                        med_name: medName,
                        quantity: quantity,
                        price: price,
                        amount: amount,
                        product_id: productId,
                        batch_no: batchNo,
                        expiry_date: expiryDate,
                        invoice_number: 'your_invoice_number' // Replace with your actual invoice number
                    },
                    success: function(response) {
                        console.log("Success function called");
                        console.log("Response from PHP backend", response);
                        // Handle success, if needed
                    },
                    error: function(xhr, status, error) {
                        console.error("Error in AJAX request:", error);
                    }
                });
            }
        }

        function addRow() {
            // Implement your logic to add a new row here
            // You might want to dynamically assign a unique rowId to each row
            // After adding a row, call saveRow(rowId) to automatically save the data
            var rowId = 'your_unique_row_id';

            // Call saveRow(rowId) to automatically save the data
            saveRow(rowId);

        }
    </script>
</head>
<body>
    <table id="table-body" border="1" style="width:150px">
        <!-- ... (your existing table structure) ... -->
    </table>
    <button type="button" onclick="addRow()">Add Row</button>



    <?php
    
//save_data.php
include('../conn2.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sanitize input
    $medName = filter_var($_POST["med_name"], FILTER_SANITIZE_STRING);
    $quantity = filter_var($_POST["quantity"], FILTER_SANITIZE_NUMBER_INT);
    $price = filter_var($_POST["price"], FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
    $amount = filter_var($_POST["amount"], FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
    $productId = filter_var($_POST["product_id"], FILTER_SANITIZE_NUMBER_INT);
    $batchNo = filter_var($_POST["batch_no"], FILTER_SANITIZE_STRING);
    $expiryDate = filter_var($_POST["expiry_date"], FILTER_SANITIZE_STRING);
    $invoiceNumber = filter_var($_POST["invoice_number"], FILTER_SANITIZE_STRING);

    // Generate a unique identifier for the row
    $rowId = uniqid($invoiceNumber);

    // Query to insert data into the database
    $stmt = $db->prepare("INSERT INTO your_table_name (row_id, med_name, quantity, price, amount, product_id, batch_no, expiry_date, invoice_number) 
                          VALUES (:row_id, :med_name, :quantity, :price, :amount, :product_id, :batch_no, :expiry_date, :invoice_number)");
    
    $stmt->bindParam(":row_id", $rowId);
    $stmt->bindParam(":med_name", $medName);
    $stmt->bindParam(":quantity", $quantity);
    $stmt->bindParam(":price", $price);
    $stmt->bindParam(":amount", $amount);
    $stmt->bindParam(":product_id", $productId);
    $stmt->bindParam(":batch_no", $batchNo);
    $stmt->bindParam(":expiry_date", $expiryDate);
    $stmt->bindParam(":invoice_number", $invoiceNumber);

    if ($stmt->execute()) {
        echo "Data saved successfully!";
    } else {
        echo "Error saving data to the database.";
    }
}
?>



</body>
</html>
