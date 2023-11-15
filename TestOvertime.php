<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Retrieve Data</title>
</head>
<body>

<script>
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

                resolve(data);
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

// Example usage
const emp_id = 7;
const month = 'Nov';
retrieveData(emp_id, month)
    .then(data => {
        // Handle the combined data here
        console.log('Combined Data:', data);
    })
    .catch(error => {
        // Handle the error here
        console.error('Error:', error);
    });

</script>

</body>
</html>
