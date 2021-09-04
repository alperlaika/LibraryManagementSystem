<?php
require('dbconn.php');
session_start();
$id=$_GET['id'];
echo $id;

$roll=$_SESSION['RollNo'];

try {
    
$sql="insert into LMS.return (RollNo,BookId) values ('$roll','$id')";
//echo $conn->query($sql);

if($conn->query($sql) === TRUE)
{
echo "<script type='text/javascript'>alert('You Are Being Redirected To The Returns Page.')</script>";
header( "Refresh:0.01; url=return_requests.php", true, 303);
}
else
{
	echo "<script type='text/javascript'>alert('Could Not Be Returned')</script>";
    header( "Refresh:0.01; url=return_requests.php", true, 303);

}

} catch (\Throwable $th) {
    //throw $th;
}



?>