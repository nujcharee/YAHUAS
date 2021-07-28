<!DOCTYPE html> 
<html>
    <head><link rel="stylesheet" href="uni.css">
    </head>
<?php

$staff_no  = $_REQUEST['staff_no'];
$staff_title  = $_REQUEST['title'];
$staff_fname  = $_REQUEST['staff_fname'];
$staff_sname  = $_REQUEST['staff_sname'];
$staff_gender = $_REQUEST['staff_gender'];


$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="INSERT INTO staff (`staff_no`
, `title`
, `staff_fname`
, `staff_sname`
, `staff_gender`) 

VALUES ('$staff_no'
, '$staff_title'
, '$staff_fname'
, '$staff_sname'
, '$staff_gender')";

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

