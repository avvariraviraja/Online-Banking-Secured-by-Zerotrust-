<?php
$serverName="localhost";
$dbusername="root";
$dbpassword="root123";
$dbname="banking";
mysql_connect($serverName,$dbusername,$dbpassword,$dbname)/* or die('the website is down for maintainance')*/;
mysql_select_db($dbname) or die(mysql_error());
?>