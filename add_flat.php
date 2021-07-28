<!DOCTYPE html> 
<html>
    <head><link rel="stylesheet" href="uni.css">
    </head>
<?php

<?php
$flat_no  = $_REQUEST['flat_no'];
$address  = $_REQUEST['address'];
$postcode = $_REQUEST['postcode'];
$num_of_bed = $_REQUEST['num_of_bed'];


$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="INSERT INTO flat (`flat_no`
, `address`
, `postcode`
, `num_of_bed`
) 


VALUES ('$flat_no'
, '$address'
, '$postcode'
, '$num_of_bed')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
    echo "<br>";
    echo "<a href='main.html'>Back to main menu</a>";

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

