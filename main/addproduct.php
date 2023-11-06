<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css">
<link rel="stylesheet" href="css/jquery.css">
<link rel="stylesheet" type="text/css" href="src/facebox.css">
<link rel="stylesheet" type="text/css" href="css/style.css">

<style type="text/css">
	

#search_results {
	margin-top: 20px;
	margin-right: 30px;
	display: none;

}


.input-container {
    position: relative;
}

.input-container input[type="text"] {
    padding-right: 2px; /* Adjust the padding to fit the dropdown */
}

.input-container select {
    position: absolute;
    right: 0;
    top: 0;
    height: 100%;
}


</style>

<form action="saveproduct.php" method="post" >
<center><h4><i class="icon-plus-sign icon-large"></i> Add Item</h4></center>
<hr>

 <div class="input-container">
<span>Name : </span><input type="text" id="med_name" name="med_name" style="width:265px; height:30px;" autocomplete="off">

<select id="search_results" style="width:265px; height:30px; border-color: #000080"  name="search_results">
    <!-- Populate this dropdown with search results using AJAX -->
</select>


</div>
<br>
<span>Inventory : </span><select style="width:165px; height:30px; border-color: #000080" name="inventory" > 
<option value="Consumable">Consumable</option>
<option value="Non Consumable">Non Consumable</option>
</select>
<br/>
<span>Category: </span>
<select style="width:265px; height:30px; border-color: #000080" name="category" id="category" > 
<option value="Anti-spasmotic">Anti-spasmotic</option>
<option value="Antibiotics">Antibiotics</option>
<option value="Antiprotoazol">Antiprotoazol</option>
<option value="Antidiabetics">Antidiabetics</option>	
<option value="Antimalaria">Antimalaria</option>
<option value="Anti-hypertensive">Anti-hypertensive</option>
<option value="Anti-ulcers">Anti-ulcers</option>
<option value="PPI">PPI</option>
<option value="NA">NA</option>
<option value="Anti-Vomitus">Anti-Vomitus</option>
<option value="Painkiller">Painkiller</option>
<option value="Anti-fungal">Anti-fungal</option>
<option value="Multivitamins">Multivitamins</option>
<option value="Vitamins">Vitamins</option>
<option value="Antihemedics">Antihemedics</option>
<option value="Antihaemorhaid">Antihaemorhaid</option>
<option value="Lazatives">Lazatives</option>
<option value="Antimotility">Antimotility</option>
</select>

<br>



<table><tr>
<td><span>Quantity<br>(optional):</span></td>
<td><input type="number" style="width:100px; height:30px;" name="quantity" id="quantity">
<select style="width:165px; height:30px; border-color: #000080" name="sell_type" > 
<option value="Tabs">Tabs</option>
<option value="Syrup">Syrup</option>
<option value="Gell">Gell</option>
<option value="Cream">Cream</option>
<option value="Oitments">Oitments</option>
<option value="Bottles">Bottles</option>
<option value="Gelletins">Gelletins</option>
<option value="Pessories">Pessories</option>
<option value="Capsules">Capsules</option>
<option value="NA">NA</option>
<option value="Ampules">Ampules</option>
<option value="Vials">Vials</option>
<option value="Drops">Drops</option>
<option value="Sprays">Sprays</option>	
<option value="Stp">Stp</option>
<option value="Sachet">Sachet</option>	
<option value="Unit">Unit</option>
<option value="Tube">Tube</option>
</select></td></tr></table>

<span> Batch No (optional):</span><input type="text" style="width:265px; height:30px;" name="batch_no"  id="batch_no" /><br>
<span></span><input type="hidden"   style="width:265px; height:30px;" name="reg_date" id="reg_date"  value="<?php echo date ('M-d-Y'); ?>" /><br>


<span>Expired Date (optional): </span><input type="date"   style="width:260px; height:30px;" name="exp_date" id="exp_date"  /><br>

<span> </span><input type="hidden" style="width:265px; height:30px;" name="del_no"  value="D876" Required/><br>
<span></span><input type="hidden" style="width:265px; height:30px;" name="date_arrival" value="<?php echo date ('M-d-Y'); ?>"  /><br>

<span>Selling Rate : </span><input type="text" id="txt1" style="width:265px; height:30px;" name="price" onkeyup="sum();" Required><br>
<span></span><input type="hidden" id="txt2" style="width:265px; height:30px;" name="o_price" value="0"><br>
<span></span><input type="hidden" id="txt3" style="width:265px; height:30px;" name="profit" readonly><br>
<span></span>
<span></span><input type="hidden" id="txt3" style="width:265px; height:30px;" name="supplier" value="None" readonly><br><br>



<!-- <span>Gross Quantity : </span><input type="number" style="width:265px; height:30px;" min="0" id="txt11" onkeyup="sum();" name="qty" Required ><br> -->
<!-- <span></span><input type="hidden" style="width:265px; height:30px;" id="txt22" name="qty_sold" Required ><br> -->
<div style="float:right; margin-right:10px;">
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save</button>
</div>
</div>
</form>
<div id="result"></div>


<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/jquery_ui.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="src/facebox.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>



    

    <script>
        // AJAX request to fetch search results as the user types
        $('#med_name').on('keyup', function() {
            var searchItem = $(this).val();
            $("#search_results").show();//show the

            $.ajax({
                type: 'POST',
                url: 'fetch_search_results.php',
                data: { search_item: searchItem },
                beforeSend: function(){
				// show loader icon
				$("#med_name").css("background","#FFF url(LoaderIcon.gif) no-repeat 175px");
				},
                success: function(data) {
                	$("#id_suggesstions").show();//show the
                    $('#search_results').html(data);
					$("#med_name").css("background","#FFF");

                }
            });
        });

        // AJAX request to fetch item details when the dropdown value changes
        $('#search_results').on('change', function() {
            var itemID = $(this).val();
            $.ajax({
                type: 'POST',
                url: 'fetch_item.php',
                data: { item_id: itemID },
                success: function(data) {
                    var result = JSON.parse(data);
                     console.log(result);

                     $("#search_results").hide();//show the

                    if (result && result.med_name) {
					    // Access the 'face' property of the 'result' object
					    console.log(result.med_name);
					    $('#med_name').val(result.med_name);
					} else {
					    // Handle the case where 'result' is undefined or does not have a 'face' property
					    console.log('Result is undefined or does not have a "med_name" property.');
					}

					if (result && result.quantity) {
					    // Access the 'face' property of the 'result' object
					    console.log(result.quantity);
					    $('#quantity').val(result.quantity);
					} else {
					    // Handle the case where 'result' is undefined or does not have a 'face' property
					    console.log('Result is undefined or does not have a "quantity" property.');
					}

					if (result && result.batch_no) {
					    // Access the 'face' property of the 'result' object
					    console.log(result.batch_no);
					    $('#batch_no').val(result.batch_no);
					} else {
					    // Handle the case where 'result' is undefined or does not have a 'face' property
					    console.log('Result is undefined or does not have a "batch_no" property.');
					}

					if (result && result.exp_date) {
					    // Access the 'face' property of the 'result' object
					    console.log(result.exp_date);
					    $('#exp_date').val(result.exp_date);
					} else {
					    // Handle the case where 'result' is undefined or does not have a 'face' property
					    console.log('Result is undefined or does not have a "exp_date" property.');
					}

					if (result && result.price) {
					    // Access the 'face' property of the 'result' object
					    console.log(result.price);
					    $('#txt1').val(result.price);
					} else {
					    // Handle the case where 'result' is undefined or does not have a 'face' property
					    console.log('Result is undefined or does not have a "price" property.');
					}
                    // Populate other form fields as needed
                }
            });
        });
    </script>