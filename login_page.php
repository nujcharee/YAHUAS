<link rel="stylesheet" href="uni.css">
<?php
session_start();
$username = $_REQUEST ['uname'];
$password = $_REQUEST ['password'];
$conn=mysqli_connect('localhost','root','','mysql');

$sql = "SELECT * FROM login where username = '$username' and password = '$password'"; 

$result = mysqli_query($conn, $sql);  
$row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
$count = mysqli_num_rows($result);  

$_SESSION['username'] = $username; 
if($count == 1){  
    header('Location: main.html');
}  
else{  
    echo "<h1> Login failed. Invalid username or password.</h1>";  
}     

$conn->close();
?>
