<!DOCTYPE html> 
<html>
    <head><link rel="stylesheet" href="uni.css">
    </head>
<?php

$student_id  = $_REQUEST['student_id'];
$stu_title  = $_REQUEST['stu_title'];
$stu_fname  = $_REQUEST['stu_fname'];
$stu_sname  = $_REQUEST['stu_sname'];
$stu_gender = $_REQUEST['stu_gender'];
$category  = $_REQUEST['category'];
$next_of_kin_name = $_REQUEST['next_of_kin_name'];
$next_of_kin_rel = $_REQUEST['next_of_kin_rel'];
$next_of_kin_addr = $_REQUEST['next_of_kin_name'];
$next_of_kin_telno = $_REQUEST['next_of_kin_telno'];
$next_of_kin_email = $_REQUEST['next_of_kin_email'];


$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="INSERT INTO student (`student_id`
, `stu_title`
, `stu_fname`
, `stu_sname`
, `stu_gender`
, `category`
, `next_of_kin_name`
, `next_of_kin_rel`
, `next_of_kin_addr`
, `next_of_kin_telno`
, `next_of_kin_email`
) 

VALUES ('$student_id'
, '$stu_title'
, '$stu_fname'
, '$stu_sname'
, '$stu_gender'
, '$category'
, '$next_of_kin_name'
, '$next_of_kin_rel'
, '$next_of_kin_addr'
, '$next_of_kin_telno'
, '$next_of_kin_email')";

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
        <a href="logout.php?logout">Log-out</a>
        
        </div>
    </center>

