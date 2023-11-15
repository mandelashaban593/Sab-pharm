<!DOCTYPE html>
<html>
<head>
    <title>Receipt</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .receipt {
            width: 300px;
            margin: 0 auto;
            border: 1px solid #000;
            padding: 10px;
        }
        .receipt-header {
            text-align: center;
            font-size: 1.2em;
            font-weight: bold;
        }
        .receipt-table {
            width: 100%;
            border-collapse: collapse;
        }
        .receipt-table, .receipt-table th, .receipt-table td {
            border: 1px solid #000;
        }
        .receipt-table th, .receipt-table td {
            padding: 8px;
            text-align: left;
        }
        .receipt-table th {
            background-color: #f2f2f2;
        }
        .print-button {
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="receipt">
        <div class="receipt-header">Receipt</div>
        <table class="receipt-table">
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
        <div class="print-button">
            <button onclick="window.print()">Print Receipt</button>
        </div>
    </div>
</body>
</html>
