<html>
<body>

<center>
   <h1>Report: Unpaid invoices </h1>
<?php
$conn=mysqli_connect('localhost','root','','YAHUAS');

$sql="SELECT * FROM unpaid"; 
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
echo ("<tr><td><b>Invoice Number</td>");
echo ("<td><b>Pay Due</td>");
echo ("<td><b>Lease Number</td></tr>");

$found =0;

while ($row=mysqli_fetch_assoc($rs))	//loop through all the records returned
	{
	$found=1;			//set variable because records found
	$invoice_no=$row['invoice_no'];
	$pay_due=$row['pay_due'];
	$lease_no=$row['lease_no'];
	echo ("<tr><td>".$invoice_no."</td>");      //put data in table
   echo ("<td>".$pay_due."</td>"); 
   echo ("<td>".$lease_no."</td></tr>"); 
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
