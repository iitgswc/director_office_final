<body >
<?php  
include("head.php");
include('connect.php');
error_reporting(E_ALL);
ini_set('display_errors', 0);

$id=$_GET['edit'];
$query = "SELECT * FROM dir WHERE id = '$id'";
$result = mysql_query($query);
$row = mysql_fetch_array($result);
if (isset($_POST['Submit'])) {
    //collect value of input field
	$content = $_POST['content'];
	if(empty($content)){
        $error = "Enter all the feilds";
    }else{
        $success = "Table dir created n updated successfully";
		mysql_query ("UPDATE dir SET content = '$content' WHERE id = '$id'");
    }
}
?>
<main>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker({maxDate: "0",dateFormat: 'dd/mm/yy' }); //Restrict the range of selectable dates with the minDate and maxDate options. Set the beginning and end dates as actual dates (new Date(2009, 1 - 1, 26)), as a numeric offset from today (-20), or as a string of periods and units ('+1M +10D'). For the last, use 'D' for days, 'W' for weeks, 'M' for months, or 'Y' for years.
  } );
  </script>
  <style>
  table{
	  width: 90% !important;
  }
  </style>
	<div class="container">
		<div class="card">
			<div class="card-content">
				<div class="row">
				  <div class="row center">
					<div class="col s6 offset-s3"><span class="flow-text center">Update Director's Message</span></div>
				  </div>
				  <?php 
					if($error != ''){
					?>
					  <div class="row margin center" style="color:red">
						<?php echo $error ?>
					  </div>
					<?php
					}
					else if($success != ''){
					?>
					  <div class="row margin center" style="color:green">
						<?php echo $success ?>
					  </div>
					<?php
					}
					else{
						//echo "";
					}
				  ?>
				  <form name="form1" method="POST" class="col s12" action="" enctype="multipart/form-data">
					<div class="row">
						<div class="input-field col s12">
							<textarea id="content" type="text" name="content" autocomplete="off" class="materialize-textarea"><?php echo "$row[1]" ?></textarea>
							<label for="content">Message</label>
						</div>
					</div>
					<div class="row center">
						<div class="col s12">
							<button class="btn waves-effect waves-light" type="submit" name="Submit">Update and Publish
							</button>
						</div>
					</div>
				  </form>
				</div>
			</div>
		</div>
	</div>
	</main>
</body>