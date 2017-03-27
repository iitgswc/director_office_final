<?php
$dbh1=mysql_connect ("localhost", "root", "") or die ('I cannot connect to the database because: ' . mysql_error());
mysql_select_db ("logindir");
error_reporting(E_ALL);
ini_set('display_errors', 0);
?>