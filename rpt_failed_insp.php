<html>
<body>

<center>
   <h1> Report: Failed inspections </h1>
<?php
$conn=mysqli_connect('localhost','root','','YAHUAS');


$sql="SELECT * FROM failed_insp"; 
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
echo ("<tr><td><b>Inspection ID</b></td>");
echo ("<td><b>Inspection Date</b></td>");
echo ("<td><b>Flat No.</b></td>");
echo ("<td><b>Comment</b></td></tr>");

$found =0;

while ($row=mysqli_fetch_assoc($rs))	//loop through all the records returned
	{
	$found=1;			//set variable because records found
	$inspection_id=$row['inspection_id'];
	$inspect_date=$row['inspect_date'];
	$flat_no=$row['flat_no'];
   $comment=$row['comment'];

	echo ("<tr><td>".$inspection_id."</td>");      //put data in table
   echo ("<td>".$inspect_date."</td>"); 
   echo ("<td>".$flat_no."</td>"); 
   echo ("<td>".$comment."</td></tr>"); 

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
