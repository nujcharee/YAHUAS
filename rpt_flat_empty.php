<html>
<body>

<center>
   <h1> Report: Vacant Flat Rooms</h1>
<?php
$conn=mysqli_connect('localhost','root','','YAHUAS');


$sql="SELECT * FROM empty_flat"; 
$sql2="SELECT * FROM flat_lost_revenue"; 

if (mysqli_connect_errno())
   {
   echo "Failed to connect to MySQL: " . mysqli_connect_error();
   }
$rs=mysqli_query($conn,$sql);
$rs1=mysqli_query($conn,$sql2);
if (!$rs)
{
	die("Could not get data ");
}

echo ("<h2>Possible lost of revenue.</h2>");
echo ("<table border='1'>");	//set up a table for the results
echo ("<tr><td>Room No.</td>");
echo ("<td>Rent rate</td>");
echo ("<td>Place No</td>");
echo ("<td>Flat No.</td>");
echo ("<td>Smoking Room</td></tr>");

$found =0;

while ($row=mysqli_fetch_assoc($rs))	//loop through all the records returned
	{
	$found=1;			//set variable because records found
	$room_no=$row['room_no'];
	$month_rent_rate=$row['month_rent_rate'];
	$place_no=$row['place_no'];
   $flat_no=$row['flat_no'];
    $smoking_room_yn=$row['smoking_room_yn'];
   
	echo ("<tr><td>".$room_no."</td>");      //put data in table
   echo ("<td>".$month_rent_rate."</td>"); 
   echo ("<td>".$place_no."</td>"); 
   echo ("<td>".$flat_no."</td>"); 
   echo ("<td>".$smoking_room_yn."</td></tr>"); 

	}
echo ("</table>");			//finish table
if ($found==0) {			//print message if no data found
	echo ("None found");
	}



   $found1 =0;

   while ($row1=mysqli_fetch_assoc($rs1))	//loop through all the records returned
      {
      $found1=1;			//set variable because records found
      $LostIncome=$row1['LostIncome'];
    
      
      echo ("<h3><b>£".$LostIncome."</b></h3>");      //put data in table
      
      }
   
   if ($found1==0) {			//print message if no data found
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
