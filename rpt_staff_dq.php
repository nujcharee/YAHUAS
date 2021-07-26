<html>
<body>

<center>
   <h1> Report: Student on waiting list</h1>
<?php
$conn=mysqli_connect('localhost','root','','YAHUAS');


$sql="SELECT * FROM staff_no_office"; 
if (mysqli_connect_errno())
   {
   echo "Failed to connect to MySQL: " . mysqli_connect_error();
   }
$rs=mysqli_query($conn,$sql);
if (!$rs)
{
	die("Could not get data ");
}


echo ("<table border='1'>");	//set up a table for the results
echo ("<tr><td>Staff No</td>");
echo ("<td>First name</td>");
echo ("<td>Surname</td>");
echo ("<td>Position</td></tr>");

$found =0;

while ($row=mysqli_fetch_assoc($rs))	//loop through all the records returned
	{
	$found=1;			//set variable because records found
	$staff_no=$row['staff_no'];
	$title=$row['title'];
	$staff_fname=$row['staff_fname'];
   $staff_sname=$row['staff_sname'];
   
	echo ("<tr><td>".$staff_no."</td>");      //put data in table
   echo ("<td>".$title."</td>"); 
   echo ("<td>".$staff_fname."</td>"); 
   echo ("<td>".$staff_sname."</td></tr>"); 

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
