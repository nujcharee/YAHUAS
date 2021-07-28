<!DOCTYPE html> 
<html>
    <head><link rel="stylesheet" href="uni.css">
    </head>
<?php

$course_no  = $_REQUEST['course_no'];
$course_title  = $_REQUEST['course_title'];
$room_no  = $_REQUEST['room_no'];


$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="INSERT INTO course (`course_no`
, `course_title`
, `room_no`) 

VALUES ('$course_no'
, '$course_title'
, '$room_no')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
  
  $conn->close();
?> 


<center>
<hr>
    Copyright &copy; YAHUAS || 
      <a href="main.html">Main Menu</a>|| <a href="logout.php?logout">Log-out</a>
</center>