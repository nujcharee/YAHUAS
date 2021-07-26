<html>
<body>

<center>
   <h1> Report: Courses without instructors</h1>
<?php
$conn=mysqli_connect('localhost','root','','YAHUAS');

$sql="SELECT * FROM course_dq"; 
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
echo ("<tr><td><b>Course Number</td>");
echo ("<td><b>Course Title</td></tr>");


$found =0;

while ($row=mysqli_fetch_assoc($rs))	//loop through all the records returned
	{
	$found=1;			//set variable because records found
	$course_no=$row['course_no'];
	$course_title=$row['course_title'];
	echo ("<tr><td>".$course_no."</td>");      //put data in table
   echo ("<td>".$course_title."</td></tr>"); 
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
