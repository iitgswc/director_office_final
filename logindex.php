<!DOCTYPE html>

<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Director page Login - IIT Guwahati</title>
  <!-- CORE CSS-->
  
<!--  <link rel="stylesheet" href="css/materialize.min.css">-->
  <link rel="stylesheet" href="css/ghpages-materialize.css">
</head>
<body>
<?php
//$dbh=mysql_connect ("localhost", "root", "") or die ('I cannot connect to the database because: ' . mysql_error());
//mysql_select_db ("logindir");

/*$conn = mysqli_connect("localhost","root","", "logindir");
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
if(!empty($user) && !empty($pass))
{
	
	$query='SELECT * FROM loginsession WHERE username='$user' AND password='$pass'';
	if (mysqli_query($conn, $query)) {
    echo "Table  created successfully";
} else {
    echo "Error creating table: " . mysqli_error($conn);
}

	if($query_run=mysql_query($query))
		$query_num_rows=mysql_num_rows($query_run);
	else 
		echo ' didnot connect';
	if($query_num_rows==0)
		echo 'incorrect user id or password';
}
else
{
	echo "invalid";
} */

// Establishing Connection with Server by passing server_name, user_id and password as a parameter
$connection = mysql_connect("localhost", "root", "");
// Selecting Database
$db = mysql_select_db("logindir", $connection);

error_reporting(E_ALL);
ini_set('display_errors', 0);


if (isset($_POST['Submit'])) {
	if (empty($_POST['user']) || empty($_POST['pass'])) {
		$error = "Enter both Username and Password";
	}
	else
	{
      $username = $_POST["user"];
      $password = $_POST["pass"];

     
      //include("connect.php");
	
	  $username = stripslashes($username);
	  $password = stripslashes($password);
	  $username = mysql_real_escape_string($username);
	  $password = mysql_real_escape_string($password);


      $dusername = mysql_query("SELECT * FROM loginsession WHERE username = '$username'");
      $usernamelogin= mysql_num_rows($dusername);
       $dpassword = mysql_query("SELECT * FROM loginsession WHERE username = '$username' AND password = '$password'");
       $passwordlogin = mysql_num_rows($dpassword);
      // If username exists
      if ($usernamelogin == 1 && $passwordlogin == 1 ) {
			 header('Location:head.php'); 

			 }
          else {
              $error = "Incorrect Username/Password ";
          }
     
      
	}
	}
?>
   <div id="login-page" class="row">
    <div class="col s4 offset-s4 z-depth-6 card-panel" style="margin-top:5%;">
      <form class="login-form" name="form1" action="" method="POST">
        <div class="row">
          <div class="input-field col s12 center">
            <img src="images/logo.png" alt="" class="responsive-img valign profile-image-login">
            <p class="center login-form-text"><strong>Director Office - Admin Panel</strong></p>
          </div>
        </div>
		<div class="row margin center" style="color:red">
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
		</div>
        <div id="hideform" class="row margin">
          <div class="input-field col s12">
            <i class="mdi-social-person-outline prefix"></i>
            <input id="username" type="text" name="user" class="validate">
            <label for="username">Username</label>
          </div>
        </div>
        <div id="hideform" class="row margin">
          <div class="input-field col s12">
            <i class="mdi-image-timer prefix"></i>
            <input id="password" type="password" name="pass" class="validate">
            <label for="password">Password</label>
          </div>
        </div>
        <div id="hideform" class="row">
          <div class="input-field col s6 offset-s3">
			<button class="btn waves-effect waves-light col s12" type="submit" name="Submit">Login
			</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</body>
</html>