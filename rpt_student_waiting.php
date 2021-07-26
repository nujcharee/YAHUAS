<html>
<body>

<center>
   <h1> Report: Student on waiting list</h1>
<?php
$conn=mysqli_connect('localhost','root','','YAHUAS');


$sql="SELECT * FROM student_wait"; 
if (mysqli_connect_errno())
   {
   echo "Failed to connect to MySQL: " . mysqli_connect_error();
   }
$rs=mysqli_query($conn,$sql);
if (!$rs)
{
	die("Could not get data ");
}


echo ('<link rel="stylesheet" href="bitnami.css">');
echo ("<table border='1'>");	//set up a table for the results
echo ("<tr><td>Student ID</td>");
echo ("<td>Student Title</td>");
echo ("<td>Student First name</td>");
echo ("<td>Student Last name</td>");
echo ("<td>Category</td>");
echo ("<td>Date of birth</td>");
echo ("<td>Course No.</td>");
echo ("<td>Status</td></tr>");

$found =0;

while ($row=mysqli_fetch_assoc($rs))	//loop through all the records returned
	{
	$found=1;			//set variable because records found
	$student_id=$row['student_id'];
	$stu_title=$row['stu_title'];
	$stu_fname=$row['stu_fname'];
   $stu_sname=$row['stu_sname'];
   $category=$row['category'];
   $dob=$row['dob'];
   $course_no=$row['course_no'];
   $status=$row['status'];
	echo ("<tr><td>".$student_id."</td>");      //put data in table
   echo ("<td>".$stu_title."</td>"); 
   echo ("<td>".$stu_fname."</td>"); 
   echo ("<td>".$stu_sname."</td>"); 
   echo ("<td>".$category."</td>"); 
   echo ("<td>".$dob."</td>");
   echo ("<td>".$course_no."</td>");
   echo ("<td>".$status."</td></tr>");
	}
echo ("</table>");			//finish table
if ($found==0) {			//print message if no data found
	echo ("None found");
	}
mysqli_close($conn);				//close connection to database
?>
<center>
<hr>
        Copyright &copy; YAHUAS || 
         <a href="main.html">Main Menu</a>|| <a href="logout.php?logout">Log-out</a>
</center>
</body>
</html>
