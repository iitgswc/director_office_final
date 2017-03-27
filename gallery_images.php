<body>
	<?php 
	include('head.php');
	include('connect.php');
	if(isset($_GET['delete'])) {
		@mysql_query("DELETE FROM dirimg WHERE id = '".$_GET['delete']."'");
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
					<?php 
						  include('connect.php');
						  $query = "SELECT * FROM dirimg";
						  $result = mysql_query($query);
						  
						?>
						<br>
					   <div align="center"> 
						  <table border="1" class="striped" cellpadding="2">
							<tr> 
							  <th width="10%"  style='text-align:center;' valign="top" bgcolor="#dedede"> <font>Id</font></th>
							  <th width="70%" style='text-align:center;' valign="top" bgcolor="#dedede"> <font>Content</font></th>
							  <th width="20%" style='text-align:center;' valign="top" bgcolor="#dedede"> <font>Delete</font></th>
							</tr>
							<?php
									while($row = mysql_fetch_array($result)){
									
											$id= $row[0];
											$img = $row[1];
											echo "<tr>";	
											echo "<td width='10%;' style='text-align:center;'><font size='2'>$id</td>";
											echo "<td width='70%;' style='text-align:center;'><font size='2'><img  style='width:100px;height:100px'src='$img'></td>";
											echo "<td width='20%;' style='text-align:center;'><font size='2'><a style='color:red;' href='loginside2.php?delete=$id''>Delete</a></td>";
											echo "</tr>";
										}
							?>

						  </table>
						</div>
					</div>
			</div>
		</div>
		<div class="row">
			<div class="col s4 offset-s4"><a style="width:100%" class="waves-effect waves-light btn" href="img_upload.php">Add an Image</a></div>
		</div>
	</div>
	</main>
</body>