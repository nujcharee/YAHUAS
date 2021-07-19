<?php
$conn=mysqli_connect('localhost','root','','mysql');
$sql="SELECT * FROM student";
if (mysqli_connect_errno())
   {
   echo "Failed to connect to MySQL: " . mysqli_connect_error();
   }
$rs=mysqli_query($conn,$sql);
if (!$rs)
{
	die("Could not get data ".mysql_error());
}
while($row = mysqli_fetch_array($rs))
   {
$studentname=$row['studentname'];	
//read contents of Name field into variable studentname
$course=$row['course'];
$subject=$row['subject'];
echo ("<table>");
echo ("<tr><td>Name:</td><td>$studentname</td></tr>"); 	
//write contents of variable studentname into an HTML table
echo ("<tr><td>Major:</td><td>$course</td></tr>");
echo ("<tr><td>Minor:</td><td>$subject/td></tr>");
echo ("</table>"); 
}
mysqli_close($conn);					//close connection to database
?>
