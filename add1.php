<html>
<body>
<?php include("head.php"); ?>
<main>





<?php
//include 'pk1.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // collect value of input field
    $id = $_POST['fname'];
	$cont = $_POST['pname'];
	$conn8 = new mysqli("localhost","root","", "logindir");
	$sql5=mysql_query("INSERT INTO dir(id,content)
VALUES ('$id','$cont' )");


    if (empty($id) || empty($cont)) {
        echo "Enter all the feilds";
    } else {
        if (mysqli_query($conn8,"INSERT INTO dir(id,content)
           VALUES ('$id','$cont' )")) {
             echo "Table dir created n updated successfully";
               			   } else {
             echo "Error creating table: " . mysqli_error($conn8);
}
    }
}




?>


<form name="form1" method="POST" class="col s12" action="<?php echo $_SERVER['PHP_SELF'];?>" enctype="multipart/form-data">
					<div class="row">
						<div class="input-field col s6">
							<b> Id:</b> <input type="text" name="fname">
							<label for="fname">STANZA NO.</label>
						</div>
						<div class="input-field col s6">
							<b> Content:</b> <input type="text" name="pname">
							<label for="pname">MESSAGE</label>
						</div>
					</div>
					
					<div class="row center">
						<div class="col s12">
							<button class="btn waves-effect waves-light" type="submit" name="Submit">Publish
							   
							</button>
						</div>
					</div>
				  </form>

</main>
</body>
</html>