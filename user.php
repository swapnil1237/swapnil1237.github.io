<?php

$con=mysqli_connect('localhost','root','root');
if(!$con)
{
  echo 'Not Connected To sever';

}
if(!mysqli_select_db($con,'website'))
{
  echo 'database not selected';

}
if(isset($_POST['firstname']) and isset($_POST['Password'])){
$name=$_POST['firstname'];
$password=$_POST['Password'];
$sql="SELECT * FROM users";
$f=0;
$records=mysqli_query($con,$sql);
while($row = mysqli_fetch_array($records))
// while ($row = mysql_fetch_array($result) or die mysql_error())
{
 if($row['password']==$password&&$row['firstname']==$name)
  {
    $f=1;
    break;
  }

}
if($f==1)
{
	session_start();
	$_SESSION['sess_user']=$name;
  header("refresh:0;url=main.html");

}
else {
    echo "enter correct details";
        header("refresh:2;url=login_user.html");
}
}


?>