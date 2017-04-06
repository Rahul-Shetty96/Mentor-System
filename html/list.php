<!DOCTYPE html>
<html>
<head>
	<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <meta content="utf-8" http-equiv="encoding">
	<title>List</title>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
	<script src="../js/jquery.js" type="text/javascript"></script>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<script src="../js/admin1.js" type="text/javascript"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-filestyle/1.2.1/bootstrap-filestyle.min.js"></script>
	<link href="../css/header.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	<link rel="stylesheet" href="../font-awesome/css/font-awesome.min.css" />
	<link rel="stylesheet" href="../css/list.css" />			 
</head>

<body>

<?php 
	session_start();
	if(!isset($_SESSION['admin']))
	{
		header('Location:logform.php');
	}
	if(isset($_POST['logout']))
	{
		session_destroy();
		header('Location:logform.php');
	}
	require 'header.php'; 
	$class = $_GET['class'];

	$con=mysqli_connect("localhost","root","","mentordb") or die("couldn't to the  server");

$res1 = mysqli_query($con,"select count(*) as c from mentee where class='$class'");
$a = mysqli_fetch_assoc($res1);
$n = $a['c'];

$res2 = mysqli_query($con,"select count(*) as d from mentor");
$b = mysqli_fetch_assoc($res2);
$m = $b['d'];

$r = $n%$m;
$d = $n/$m;
$ar[] = array();
$id = (int)1;
for($x = 1; $x <= $n; $x++)
{
	for($y = 1; $y <= $d && $x<=$n; $y++)
	{
		$ar[$x] = $id;
		$x++;
	}

	if($r>0)
	{
		$r--;
		$ar[$x] = $id;
		$x++;
	}
	$id++;
	$x--;
}
?>
<div class="container class_name">
	<ul class="breadcrumb">
	    <li><a href="admin1.php">Home</a></li>
	    <li><a href="#"><?php echo $_GET['class']; ?></a></li>
	</ul>
</div>
<div class="container main">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Roll No</th>
        <th>Student Name</th>
        <th>Mentor Assigned</th>
      </tr>
    </thead>
    <tbody>
  
	<?php

	for($x = 1; $x <= $n; $x++)
	{
		$res1 = mysqli_query($con,"select name from mentee where roll_no='$x' and class='$class'");
		$a = mysqli_fetch_assoc($res1);
		$name = $a['name'];

		$res2 = mysqli_query($con,"select email,name from mentor where id='$ar[$x]'");
		$a = mysqli_fetch_assoc($res2);
		$mentor_name = $a['name'];

		$email = $a['email'];
		mysqli_query($con,"update mentee set mentor='$email' where roll_no='$x' and class='$class'");
		$pr = "<tr><td>".$x."</td><td>".$name."</td><td>".$mentor_name."</td></tr>";
		echo $pr;
	}
	?>
	</tbody>
  </table>
</div>
</body>
</html>