<html>
<body>

<center>
   <h1> Unpaid Invoices </h1>
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

echo ('<link rel="stylesheet" href="uni.css">');
echo ("<table border='1'>");	//set up a table for the results
echo ("<tr><td>Invoice No.</td>");
echo ("<td>Lease No.</td>");
echo ("<td>Due</td></tr>");

$found =0;

while ($row=mysqli_fetch_assoc($rs))	//loop through all the records returned
	{
	$found=1;			//set variable because records found
	$invoice_no=$row['invoice_no'];
	$lease_no=$row['lease_no'];
   $pay_due=$row['pay_due'];
	echo ("<tr><td>".$invoice_no."</td>");      //put data in table
   echo ("<td>".$lease_no."</td>"); 
   echo ("<td>".$pay_due."</td></tr>"); 
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
