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

<form method="post" enctype="multipart/form-data">
<center><h4><i class="icon-plus-sign icon-large"></i> Upload products</h4></center>
<hr>

 <div class="input-container">
<span>Choose Excel File: </span><input id="excelFile" type="file" name="excelFile" style="width:265px; height:50px;" >

</div>
<br>



<!-- <span>Gross Quantity : </span><input type="number" style="width:265px; height:30px;" min="0" id="txt11" onkeyup="sum();" name="qty" Required ><br> -->
<!-- <span></span><input type="hidden" style="width:265px; height:30px;" id="txt22" name="qty_sold" Required ><br> -->
<div style="float:right; margin-right:10px;">
<button type="button" class="btn btn-primary" onclick="handleExcelData()">Upload</button>
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
    function redirectToCurrentPage() {
    window.location.href = window.location.href;
}

        function handleExcelData() {
            const fileInput = document.getElementById("excelFile");
            const file = fileInput.files[0];

            if (file) {
                const formData = new FormData();
                formData.append("excelFile", file);

                fetch("saveupwsaleprods.php", {
                    method: "POST",
                    body: formData,
                })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert("Data uploaded successfully!");
                        redirectToCurrentPage();
                    } else {
                        alert("Error: " + data.error);
                    }
                })
                .catch(error => {
                    console.error(error);
                    alert("An error occurred while uploading the data.");
                });
            }
        }
    </script>