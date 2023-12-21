<!DOCTYPE html>
<html>
<head>
    <title>Medicine Selection</title>
</head>
<body>
    <label for="medicineSelect">Select a Medicine:</label>
    <select id="medicineSelect">
        <option value="">Select a medicine...</option>
    </select>

    <script>
        const selectElement = document.getElementById("medicineSelect");

        // Function to populate the select element with medicine names
        function populateSelect(letter) {
            fetch(`getMedicinesTest.php?letter=${letter}`)
                .then(response => response.json())
                .then(data => {
                    selectElement.innerHTML = "<option value=''>Select a medicine...</option>";
                    data.forEach(medicine => {
                        const option = document.createElement("option");
                        option.value = medicine.name;
                        option.textContent = medicine.name;
                        selectElement.appendChild(option);
                    });
                })
                .catch(error => console.error(error));
        }

        // Event listener for input changes
        selectElement.addEventListener("input", function () {
            const inputText = selectElement.value.trim();
            if (inputText.length === 0) {
                selectElement.innerHTML = "<option value=''>Select a medicine...</option>";
            } else {
                const firstLetter = inputText.charAt(0);
                populateSelect(firstLetter);
            }
        });
    </script>
</body>
</html>
