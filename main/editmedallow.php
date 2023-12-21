<?php
	require '../conn2.php';
	if(isset($_GET['id'])) $id=$_GET['id'];
	$result = $db->prepare("SELECT * FROM  medical_allowance  WHERE allowance_id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditmedallow.php" method="post">
<center><h4><i class="icon-edit icon-large"></i> Edit Medical Allowance</h4></center>
<hr>
<div id="ac">
<input type="hidden" name="memi" value="<?php echo $id; ?>" />
<span>First Name: </span>
<input type="text" name="fname" class="fname_input" oninput="updateDropdown(this)"  style="width:265px; height:30px;" value="<?php echo $row['fname']; ?>"  Required>
<div class="fname_suggestions"></div>
<input type="hidden" name="lname"  id="lname" value="<?php echo $row['lname']; ?>"  Required>
<input type="hidden" name="emp_id"  id="emp_id" value="<?php echo $row['emp_id']; ?>"  Required>
<span>Amount: </span><input type="number" style="width:265px; height:30px;" name="amount" id="amount" value="<?php echo $row['amount']; ?>"  Required/><br>
<span>Date. : </span><input type="date" style="width:265px; height:30px;" name="date" id="date" value="<?php echo $row['allowance_date']; ?>"  Required/><br>
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save</button>
</div>
</div>


</form>
<?php
}
?>



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
  
