<?php

$student_id  = $_REQUEST['student_id'];
$stu_title  = $_REQUEST['stu_title'];
$stu_fname  = $_REQUEST['stu_fname'];
$stu_sname  = $_REQUEST['stu_sname'];
$stu_gender = $_REQUEST['stu_gender'];
$stu_addr1  = $_REQUEST['stu_addr1'];
$stu_postcode = $_REQUEST['stu_postcode'];
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
, `stu_addr1`
, `stu_postcode`
, `category`
, `next_of_kin_name`
, `next_of_kin_rel`
, `next_of_kin_addr`
, `next_of_kin_telno`
, `next_of_kin_email`
) 


VALUES ('S10000', 'MR'
, 'David'
, 'Haswell'
, 'M'
, 'Gy'
, 'DL7 8AD'
, 'PhD'
, 'Ped'
, 'Wife'
, '5 Rise'
, '0199222'
, 'Bat@come')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
  
  $conn->close();
?> 


