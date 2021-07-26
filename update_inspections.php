<!DOCTYPE html> 
<html>
    <head><link rel="stylesheet" href="uni.css">
    </head>
<?php
$inspection_id = $_REQUEST ['inspection_id'];
$comment = $_REQUEST ['comment'];

$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="UPDATE inspection SET comment='$comment' 
WHERE inspection_id='$inspection_id'"; 

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