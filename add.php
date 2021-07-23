<?php
$title = $_REQUEST['title']; //get the data from the form

$conn=mysqli_connect('localhost','root','','mysql');
$sql="INSERT INTO `test` (`test_id`, `title`) VALUES ('', NULL)";
if (mysqli_connect_errno())
   {
   echo "Failed to connect to MySQL: " . mysqli_connect_error();
   }
if (mysqli_query($conn,$sql)) {
	echo "Record added";
	}
mysqli_close($conn);				//close connection to database
?> 
