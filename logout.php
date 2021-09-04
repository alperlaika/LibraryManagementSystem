<?php

session_start();

if(isset($_SESSION['RollNo']))
{
	unset($_SESSION['RollNo']);

}

header("Location: index.php");
die;