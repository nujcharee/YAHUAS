<!DOCTYPE html> 
<html>
    <head><link rel="stylesheet" href="uni.css">
    </head>

<?php


$hall_no  = $_REQUEST['hall_no'];
$hall_name  = $_REQUEST['hall_name'];
$telno = $_REQUEST['telno'];
$manager_no = $_REQUEST['manager_no'];



$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="INSERT INTO hall (`hall_no`
, `hall_name`
, `telno`
, `manager_no`
) 
VALUES ('$hall_no'
, '$hall_name' 
, '$telno'
, '$manager_no')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";


  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
  
  $conn->close();
?> 

<center>
<center>
<hr>
    Copyright &copy; YAHUAS || 
      <a href="main.html">Main Menu</a>|| <a href="logout.php?logout">Log-out</a>
</center>