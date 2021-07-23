<html>
<head></head>
<body>
<?php
$stu_sname = $_REQUEST ['stu_sname'];	//get the data from the form
$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="SELECT * FROM student WHERE stu_sname='$stu_sname' "; 
if (mysqli_connect_errno())
   {
   echo "Failed to connect to MySQL: " . mysqli_connect_error();
   }
$rs=mysqli_query($conn,$sql);
echo ("<p>Surname $stu_name:");
echo ("<table border='1'>");	//set up a table for the results
echo ("<tr><td>Name</td>");
echo ("<td>Course</td></tr>");
$found=0;				//initialise variable to check if any records found
while ($row=mysqli_fetch_assoc($rs))	//loop through all the records returned
	{
	$found=1;			//set variable because records found
	$student_id=$row['student_id'];
	$stu_fname=$row['stu_fname'];
	$stu_sname=$row['stu_sname'];
	echo ("<tr><td>".$stu_fname."</td><td>".$stu_sname."</td></tr>");      //put data in table
	}
echo ("</table>");			//finish table
if ($found==0) {			//print message if no data found
	echo ("None found");
	}
mysqli_close($conn);				//close connection to database
?></body>
</html>
