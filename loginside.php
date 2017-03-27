
<?php  include("head.php"); ?>
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
							  <th width="15%"  style='text-align:center;' valign="top" bgcolor="#dedede"> <font>Id</font></th>
							  <th width="20%" style='text-align:center;' valign="top" bgcolor="#dedede"> <font>Content</font></th>

							</tr>
							<?php
									while($row = mysql_fetch_array($result)){
									
											$id= $row[0];
											$content = $row[1];
											echo "<tr>";	
											echo "<td width='20%;'><font size='2'>$id</td>";
											echo "<td width='50%;'><font size='2'>$content</td>";	
											echo "<td width='15%;' style='text-align:center;'><font size='2'><a href='add2.php?delete=$id' style='color:red'>Delete</a></td>";
											echo "</tr>";
										}
							?>
						  </table>
						</div>
					</div>
			</div>
		</div>
		
	</div>
