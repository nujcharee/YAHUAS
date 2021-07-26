<html>
<body>

<center>
   <h1> Search for students </h1>
<?php
$testname = $_POST['testname'];	//get the data from the form
$conn=mysqli_connect('localhost','root','','YAHUAS');


switch ($_POST['search_box']) {
   case 1:
       $sql = "SELECT * FROM student WHERE student_id = '$testname'";
       break;
   case 2:
      $sql="SELECT * FROM student WHERE stu_sname like '%$testname%'";
      break;
   case 3:
      $sql="SELECT * FROM student WHERE status = '%$testname%'";
      break;
}


if (mysqli_connect_errno())
   {
   echo "Failed to connect to MySQL: " . mysqli_connect_error();
   }
$rs=mysqli_query($conn,$sql);
if (!$rs)
{
	die("Could not get data ");
}

echo 
("<style>table {
    width: 50%;
    border-collapse: collapse;
    border: 1px solid black;
  }
  </style>");
echo ("<table border='1'>");	//set up a table for the results
echo ("<tr><td>Student id</td>");
echo ("<td>First name</td>");
echo ("<td>Surname</td>");
echo ("<td>Date of birth</td>");
echo ("<td>Course No.</td>");
echo ("<td>Status</td></tr>");

$found =0;

while ($row=mysqli_fetch_assoc($rs))	//loop through all the records returned
	{
	$found=1;			//set variable because records found
	$student_id=$row['student_id'];
	$stu_fname=$row['stu_fname'];
	$stu_sname=$row['stu_sname'];
   $dob=$row['dob'];
   $status=$row['status'];
   $course_no=$row['course_no'];
	echo ("<tr><td>".$student_id."</td>");      //put data in table
   echo ("<td>".$stu_fname."</td>"); 
   echo ("<td>".$stu_sname."</td>"); 
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
<a href='update_student_status.php'> <b>Update</b> Waitin to Placed </a>

<hr>
        Copyright &copy; YAHUAS || 
         <a href="main.html">Main Menu</a>|| <a href="logout.php?logout">Log-out</a>
</center>
</body>
</html>
