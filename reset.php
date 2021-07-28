<!DOCTYPE html> 
<html>
    <head><link rel="stylesheet" href="uni.css">
    </head>
<?php
$username = $_REQUEST ['uname'];
$password = $_REQUEST ['password'];

$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="UPDATE login SET password='$password' 
WHERE username='$username'"; 

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