<body >
<?php  include("head.php"); ?>
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
						  $dbh=mysql_connect ("localhost", "root", "") or die ('I cannot connect to the database because: ' . mysql_error());
                                mysql_select_db ("logindir");
						
						  $query = "SELECT * FROM dir";
						  $result = mysql_query($query);
						  
						?>
						<br>
					   <div align="center"> 
						  <table border="1" class="striped" cellpadding="2">
							<tr> 
							  <th width="10%"  style='text-align:center;' valign="top" bgcolor="#dedede"> <font>Paragraph No.</font></th>
							  <th width="90%" colspan="2" style='text-align:center;' valign="top" bgcolor="#dedede"> <font>Content</font></th>

							</tr>
							<?php
									while($row = mysql_fetch_array($result)){
									
											$id= $row[0];
											$content = $row[1];
											echo "<tr>";	
											echo "<td width='10%;' style='text-align:center;'><font size='2'>$id</td>";
											echo "<td width='75%;'><font size='2'>$content</td>";
											echo "<td width='15%;' style='text-align:center;'><font size='2'><a href='update_msg.php?edit=$id'>Update</a></td>";
											echo "</tr>";
										}
							?>
						  </table>
						</div>
					</div>
			</div>
		</div>
		<div class="col s4"><a style="width:100%" class="waves-effect waves-light btn" href="add1.php">Add Message</a></div>
	</div>
	</main>
</body>