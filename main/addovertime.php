<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<style type="text/css">

.fname_suggestions {
    
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Style the dropdown links */
.fname_suggestions a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

/* Change color on hover */
.fname_suggestions a:hover {
    background-color: #f1f1f1;
}

/* Show the dropdown content when the dropdown button is clicked */
.fname_suggestions:hover .fname_suggestions {
    display: block;
}
</style>
<form action="save_overtime.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Add Overtime</h4></center>
<hr>
<div id="ac">
<span>First Name: </span>
<input type="text" name="fname" class="fname_input" oninput="updateDropdown(this)"  style="width:265px; height:30px;" >
<div class="fname_suggestions"></div>
<input type="hidden" name="lname"  id="lname" required>
<input type="hidden" name="emp_id"  id="emp_id" required>
<span>Hours worked: </span><input type="number" style="width:265px; height:30px;" name="hours_worked" id="hours_worked" required/><br>
<span>Date. : </span><input type="date" style="width:265px; height:30px;" name="date" id="date"/><br>
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save</button>
</div>
</div>
</form>


 <script>
        function updateDropdown(input) {
            const suggestionBox = input.parentElement.querySelector('.fname_suggestions');
            const userInput = input.value; // Get user input
            var row = input.closest("tr");

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
                    console.log(suggestion.med_name)
                    suggestionItem.innerText =  suggestion.fname + " "+ suggestion.lname + ", Employee id: " + suggestion.emp_id; 
                    suggestionItem.onclick = function() {
                        console.log("First Name: " + suggestion.fname)
                        console.log('Last Name: ' + suggestion.lname)
                        console.log('Employee id: ' + suggestion.emp_id)
                        input.value = suggestion.fname; // Set the input value
                        document.getElementById("lname").value = suggestion.lname;
                        document.getElementById("emp_id").value = suggestion.emp_id;
                        suggestionBox.innerHTML = ''; // Clear the suggestions
                    };
                    suggestionBox.appendChild(suggestionItem);
                });
            })
            .catch(error => console.error(error));
        }

    
    </script>
  
