<?php
	$con= mysqli_connect('localhost','root','root');
	
	if(!$con)
	{
		echo 'Not Connected To Server';
	}
	
	if(!mysqli_select_db($con,'website'))
	{
		echo 'Database Not Selected';
	}
	
	$fname=$_POST['firstname'];
	$contactnumber=$_POST['Contactnumber'];
	$address=$_POST['Address'];
	
	$sql="INSERT INTO service (username,number,address) VALUES ('$fname','$contactnumber','$address')";
	
	if(!mysqli_query($con,$sql))
	{
		echo 'Not Inserted';header("refresh:2;url=wtw.html");
	}
	else
	{
		header("refresh:1;url=msg2.html");
	}
	
?>