<html>
<body>
<link rel="stylesheet" href="uni.css">


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
   case 3:
      $sql="SELECT * FROM course WHERE course_instructor like '%$testname%'";
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
if ($row=mysqli_fetch_array($rs)) {		//if there is an output
$course_title=$row['course_title'];
$course_instructor=$row['course_instructor'];
$room_no=$row['room_no'];
echo ("<center>");

echo ('<link rel="stylesheet" href="uni.css">');
echo ("<h1>Course Details</h1>");
echo ("<table>");	
echo ("<tr><td><b>Name:</b></td><td>".$testname. "</td></tr>");
echo("<br>");
echo ("<tr><td><b>Title</b></td><td>".$course_title."</td></tr>");
echo ("<tr><td><b>Instructor:</b></td><td>".$course_instructor."</td></tr>");
echo ("<tr><td><b>Room:</b></td><td>".$room_no."</td></tr>");
echo ("</table>"); 
echo ("</center>");

}
else {							//if there is no output
	echo ("<p>Name not found</p>");
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
