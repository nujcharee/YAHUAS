<html>
<body>

<center>
   <h1> Search for courses </h1>
<?php
$testname = $_POST['testname'];	//get the data from the form
$conn=mysqli_connect('localhost','root','','YAHUAS');


switch ($_POST['search_box']) {
   case 1:
       $sql = "SELECT * FROM course WHERE course_no like '%$testname%'";
       break;
   case 2:
      $sql="SELECT * FROM course WHERE course_title like '%$testname%'";
      break;
}

// $sql="SELECT * FROM " .$sea course WHERE course_no like '$testname'"; 
if (mysqli_connect_errno())
   {
   echo "Failed to connect to MySQL: " . mysqli_connect_error();
   }
$rs=mysqli_query($conn,$sql);
if (!$rs)
{
	die("Could not get data ");
}

echo ('<link rel="stylesheet" href="bitnami.css">');
echo ("<table border='1'>");	//set up a table for the results
echo ("<tr><td>Course No.</td>");
echo ("<td>Course Title</td>");
echo ("<td>Room No</td></tr>");

$found =0;

while ($row=mysqli_fetch_assoc($rs))	//loop through all the records returned
	{
	$found=1;			//set variable because records found
	$couse_no=$row['course_no'];
	$course_title=$row['course_title'];
   $room_no=$row['room_no'];
	echo ("<tr><td>".$couse_no."</td>");      //put data in table
   echo ("<td>".$course_title."</td>"); 
  
   echo ("<td>".$room_no."</td></tr>"); 
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
