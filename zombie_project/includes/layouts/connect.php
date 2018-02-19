<?php
//in php a $ denotes the variable
$dbhost = "db673781119.db.1and1.com"; //default server host name
$username = "dbo673781119"; //default
$password = "Lovick#1"; //default

$db = "db673781119"; //variable is going to expect the database name to be superApp

$con = mysqli_connect("$dbhost", "$username", "$password"); //mysqli is standard, do not use it without the i!!

mysqli_select_db($con, $db);

//echo "Connection Made";

?>