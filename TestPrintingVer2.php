<!DOCTYPE html>
<html>
<head>
    <title>Receipt</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #000;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Receipt</h1>
    
    <table>
        <tr>
            <th>Date</th>
            <th>Quantity</th>
            <th>Price</th>
        </tr>
        <tr>
            <td>2023-10-01</td>
            <td>10</td>
            <td>$100.00</td>
        </tr>
        <tr>
            <td>2023-10-02</td>
            <td>8</td>
            <td>$120.00</td>
        </tr>
        <tr>
            <td>2023-10-03</td>
            <td>15</td>
            <td>$90.00</td>
        </tr>
    </table>

    <button onclick="printReceipt()">Print Receipt</button>

    <script>
        function printReceipt() {
            var printWindow = window.open('', '', 'width=800,height=600');
            printWindow.document.open();
            printWindow.document.write('<html><head><title>Receipt</title></head><body>');
            printWindow.document.write('<h1>Receipt</h1>');
            printWindow.document.write(document.querySelector('table').outerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
            printWindow.close();
        }
    </script>
</body>
</html>
