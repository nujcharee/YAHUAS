<html>
<body>

<center>
   <h1> Report: Unknown leave date</h1>
<?php
$conn=mysqli_connect('localhost','root','','YAHUAS');


$sql="SELECT * FROM unknown_leave"; 
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
echo ("<tr><td>Lease No.</td>");
echo ("<td>Student Title</td>");
echo ("<td>Student First Name</td>");
echo ("<td>Student Surname</td>");
echo ("<td>Date Enter</td>");
echo ("<td>Accomodation Type</td>");
echo ("<td>Place No.</td>");
echo ("<td>Hall / Flat No.</td>");
echo ("<td>Hall / Flat Address</td>");
echo ("<td>Postcode</td></tr>");

$found =0;

while ($row=mysqli_fetch_assoc($rs))	//loop through all the records returned
	{
	$found=1;			//set variable because records found
	$lease_no=$row['lease_no'];
	$stu_title=$row['stu_title'];
	$stu_fname=$row['stu_fname'];
    $stu_sname=$row['stu_sname'];
	$date_enter=$row['date_enter'];
	$accom_type=$row['accom_type'];
    $place_no=$row['place_no'];
    $Hall_Flat_No=$row['Hall_Flat_No'];
    $Hall_Flat_Address=$row['Hall_Flat_Address'];
    $Hall_Flat_Postcode=$row['Hall_Flat_Postcode'];
   
	echo ("<tr><td>".$lease_no."</td>");      //put data in table
   echo ("<td>".$stu_title."</td>"); 
   echo ("<td>".$stu_fname."</td>"); 
   echo ("<td>".$stu_sname."</td>"); 
   echo ("<td>".$date_enter."</td>"); 
   echo ("<td>".$accom_type."</td>"); 
   echo ("<td>".$place_no."</td>"); 
   echo ("<td>".$Hall_Flat_No."</td>"); 
   echo ("<td>".$Hall_Flat_Address."</td>"); 
   echo ("<td>".$Hall_Flat_Postcode."</td></tr>"); 

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
