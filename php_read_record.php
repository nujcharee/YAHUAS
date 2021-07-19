<html>
<body>
<?php
$testname = $_POST['testname'];	//get the data from the form
$conn=mysqli_connect('localhost','root','','YAHUAS');
$sql="SELECT * FROM student WHERE studentname = '$testname'"; 
if (mysqli_connect_errno())
   {
   echo "Failed to connect to MySQL: " . mysqli_connect_error();
   }
$rs=mysqli_query($conn,$sql);
if (!$rs)
{
	die("Could not get data ");
}
if ($row=mysqli_fetch_array($rs)) {		//if there is an output
$course=$row['course'];
$subject=$row['subject'];
echo ("<table>");	
echo ("<tr><td>Name:</td><td>".$testname. "</td></tr>");
echo ("<tr><td>Course:</td><td>".$course."</td></tr>");
echo ("<tr><td>Subject:</td><td>".$subject."</td></tr>");
echo ("</table>"); 
}
else {							//if there is no output
	echo ("<p>Name not found</p>");
	}
mysqli_close($conn);				//close connection to database
?>
</body>
</html>
