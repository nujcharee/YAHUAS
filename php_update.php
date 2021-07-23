<?php
$stu_fname = $_REQUEST ['stu_fname'];
$stu_sname = $_REQUEST ['stu_sname'];
echo "$stu_fname";
echo "$stu_sname";
$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="UPDATE student SET stu_fname='$stu_sname' WHERE stu_fname='$stu_fname'"; 

echo $sql;
if (mysqli_query($conn,$sql)) {
	echo "Record updated";
	}
else	{
	echo "There was an error";
}
mysqli_close($conn);    //close connection to database
?>
