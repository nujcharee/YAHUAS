<!DOCTYPE html> 
<html>
    <head><link rel="stylesheet" href="uni.css">
    </head>
<?php
$staff_no = $_REQUEST ['staff_no'];
$title = $_REQUEST ['title'];

$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="UPDATE staff SET title='$title' 
WHERE staff_no='$staff_no'"; 

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
        <a href="logout.php?logout">Log-out</a>
        
        </div>
    </center>