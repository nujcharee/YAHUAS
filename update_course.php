<!DOCTYPE html> 
<html>
    <head><link rel="stylesheet" href="uni.css">
    </head>

<?php
$studentname = $_REQUEST ['studentname'];
$course = $_REQUEST ['course'];
echo "$studentname";
echo "$course";
$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="UPDATE Students SET course='$course' WHERE studentname='$studentname'"; 

echo $sql;
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