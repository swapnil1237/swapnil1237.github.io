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
	$quantity=$_POST['Quantity'];
	
	$sql="INSERT INTO compost (username,number,address,quantity) VALUES ('$fname','$contactnumber','$address','$quantity')";
	
	if(!mysqli_query($con,$sql))
	{
		echo 'Not Inserted';header("refresh:2;url=compost.html");
	}
	else
	{
		header("refresh:1;url=msg.html");
	}
	
?>