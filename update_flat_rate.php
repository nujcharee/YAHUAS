<!DOCTYPE html> 
<html>
    <head><link rel="stylesheet" href="uni.css">
    </head>
<?php

$room_no  = $_REQUEST['room_no'];
$flat_no  = $_REQUEST['flat_no'];
$month_rent_rate  = $_REQUEST['month_rent_rate'];

$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="UPDATE flat_room SET month_rent_rate = '$month_rent_rate' 
WHERE room_no = '$room_no' AND flat_no  = '$flat_no'"; 

if (mysqli_query($conn,$sql)) {
	echo "Record updated";
	}
else	{
	echo "There was an error";
}
mysqli_close($conn);    //close connection to database
?>
<center>
<hr>
        Copyright &copy; YAHUAS || 
         <a href="main.html">Main Menu</a>|| <a href="logout.php?logout">Log-out</a>
</center>