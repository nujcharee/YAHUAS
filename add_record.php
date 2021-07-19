<?php

$stu_title  = $_REQUEST['stu_title '];
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
$sql="INSERT INTO student (`stu_title`
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


VALUES ('$student_id'
, '$stu_title'
, '$stu_fname'
, '$stu_sname'
, '$stu_gender'
, '$stu_addr1'
, '$stu_postcode'
, '$category'
, '$next_of_kin_name'
, '$next_of_kin_rel'
, '$next_of_kin_addr'
, '$next_of_kin_telno'
, '$next_of_kin_email')";
if (mysqli_connect_errno())
   {
   echo "Failed to connect to MySQL: " . mysqli_connect_error();
   }
if (mysqli_query($conn,$sql)) {
	echo "Record added";
	}
mysqli_close($conn);				//close connection to database
?> 


