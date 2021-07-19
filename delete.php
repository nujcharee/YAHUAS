<?php
$testname = $_REQUEST ['testname'];
$conn=mysqli_connect('localhost','root','','YAHUAS');

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
// sql to delete a record
$sql = "DELETE FROM student WHERE stu_fname = '$stu_fname'";

if ($conn->query($sql) === TRUE) {
  echo "Record deleted successfully";
} else {
  echo "Error deleting record: " . $conn->error;
}

$conn->close();
?>
