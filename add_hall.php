<?php
session_start();

if (!(isset($_SESSION['login']) && $_SESSION['login'] != '')) {

header ("Location: login_page.php");

}

$hall_no  = $_REQUEST['flat_no'];
$hall_name  = $_REQUEST['hall_name'];
$address  = $_REQUEST['address'];
$postcode = $_REQUEST['postcode'];
$tel_no = $_REQUEST['tel_no'];
$manager_no = $_REQUEST['manager_no'];





$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="INSERT INTO hall (`hall_no`
, `hall_name`
, `address`
, `tel_no`
, `manager_no`
, `postcode`
) 
VALUES ('$hall_no'
, '$hall_name' 
, '$address'
, '$postcode'
, '$tel_no'
, '$manager_no')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
    echo "<br>";
    echo "<a href='main.html'>Back to main menu</a>";

  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
  
  $conn->close();
?> 


