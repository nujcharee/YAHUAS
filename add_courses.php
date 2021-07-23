<?php

$course_no  = $_REQUEST['course_no'];
$course_title  = $_REQUEST['course_title'];
$course_instructor = $_REQUEST['course_instructor'];
$instructor_telno  = $_REQUEST['instructor_telno'];
$instructor_email = $_REQUEST['instructor_email'];
$room_no  = $_REQUEST['room_no'];
$dept_name = $_REQUEST['dept_name'];
$dept_telno  = $_REQUEST['dept_telno'];

$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="INSERT INTO course (`course_no`
, `course_title`
, `course_instructor`
, `instructor_telno`
, `instructor_email`
, `room_no`
, `dept_name`
, `dept_telno`
) 


VALUES ('$course_no'
, '$course_title'
, '$course_instructor'
, '$instructor_telno'
, '$instructor_email'
, '$room_no'
, '$dept_name'
, '$dept_telno')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
  
  $conn->close();
?> 


