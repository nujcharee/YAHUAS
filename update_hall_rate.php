<!DOCTYPE html> 
<html>
    <head><link rel="stylesheet" href="uni.css">
    </head>
<?php

$room_no  = $_REQUEST['room_no'];
$hall_no  = $_REQUEST['hall_no'];
$monthly_rent_rate  = $_REQUEST['monthly_rent_rate'];

$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="UPDATE hall_room SET monthly_rent_rate = '$monthly_rent_rate' 
WHERE room_no = '$room_no' AND hall_no  = '$hall_no'"; 

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