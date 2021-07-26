<!DOCTYPE html> 
<html>
    <head><link rel="stylesheet" href="uni.css">
    </head>
<?php
$lease_no = $_REQUEST ['lease_no'];
$duration = $_REQUEST ['duration'];

$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="UPDATE lease SET duration='$duration' 
WHERE lease_no='$lease_no'"; 

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