<body >
<?php
   include('head.php');
   include('connect.php');
   if(isset($_FILES['image'])){
      $errors= array();
      $file_name = $_FILES['image']['name'];
      $file_size = $_FILES['image']['size'];
      $file_tmp = $_FILES['image']['tmp_name'];
      $file_type = $_FILES['image']['type'];
      $file_ext=strtolower(end(explode('.',$_FILES['image']['name'])));
      
      $expensions= array("jpeg","jpg","png","gif");
      
      if(in_array($file_ext,$expensions)=== false){
         $error = "extension not allowed, please choose a JPEG or PNG file.";
      }
      
      //if($file_size > 25000) {
      //   $errors[]='File size must be excately 25 kB';
      //}
      
    if(empty($errors)==true) 
	{
		move_uploaded_file($file_tmp,"images/".$file_name);
		  //$id = $_POST['fname'];
        $img= "images/".$file_name;
		$conn8 = new mysqli("localhost","root","", "logindir");
		$sql5=mysql_query("INSERT INTO dir(id,img) VALUES ('','$img' )");


    if (empty($img)) {
        $error = "Upload an image";
    } 
	else {
        if (mysqli_query($conn8,"INSERT INTO dirimg(id,img) VALUES ('','$img' )")) {
             $success = "Image successfully uploaded!!";
        } else {
             $error = "Error creating table: " . mysqli_error($conn8);
		}
    }
    }
	  else{
         print_r($errors);
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
					<div class="col s6 offset-s3"><span class="flow-text center">Upload image in gallery</span></div>
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
					<div class="file-field input-field">
					  <div class="btn">
						<span>File</span>
						<input type="file" name="image">
					  </div>
					  <div class="file-path-wrapper">
						<input class="file-path validate" type="text" name="image">
					  </div>
					</div>
					<div class="row center">
						<div class="col s12">
							<button class="btn waves-effect waves-light" type="submit" name="Submit">Upload
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