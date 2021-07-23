<?php
$studentname = $_REQUEST ['studentname'];
$course = $_REQUEST ['course'];
echo "$studentname";
echo "$course";
$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="UPDATE Students SET course='$course' WHERE studentname='$studentname'"; 

echo $sql;
if (mysqli_query($conn,$sql)) {
	echo "Record updated";
	}
else	{
	echo "There was an error";
}
mysqli_close($conn);    //close connection to database
?>
