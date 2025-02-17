<?php

$fname = $_POST['firstname'];
$lname = $_POST['lastname'];
$atten = $_POST['Attendance'];

$host ='localhost';
$dbname = 'team_projecttable';
$username = 'root';
$password = '';

$conn = mysqli_connect($host, $username, $password, $dbname);
if (mysqli_connect_errno()){
	die('Connection error: ' . mysqli_connect_error());	
}

//echo('Succesful Connection');

$sql = "INSERT INTO data_science_year2 (Firstname, Lastname, Attendance)
		VALUES (?, ?, ?)";
	
$stmt = mysqli_stmt_init($conn);

if ( ! mysqli_stmt_prepare($stmt, $sql)){
		die(mysqli_error($conn));
}

mysqli_stmt_bind_param($stmt, 'sss',
					   $fname,
					   $lname,
					   $atten);
					   
mysqli_stmt_execute($stmt);

echo('Your record has been saved');
header('Location: Homepage.html');
?>