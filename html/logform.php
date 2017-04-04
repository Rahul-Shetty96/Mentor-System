		
<!DOCTYPE html>
<html lang="en-us">
<meta charset="utf-8" />
<head>
	<title>Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
	<script src="../js/jquery.js" type="text/javascript"></script>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<script src="../js/admin1.js" type="text/javascript"></script>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-filestyle/1.2.1/bootstrap-filestyle.min.js"></script>
	<link href="../css/header.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	<link rel="stylesheet" href="../font-awesome/css/font-awesome.min.css" />
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	
</head>
<body>
<?php include 'header.php'; ?>
	


<form action="#" method="post">
<div class="col-md-4 col-md-offset-4 form">
	<div class="col-md-12 text">Admin login</div>
	<div class="col-md-12 username">
		<input type="text" name="username" class="form-control" placeholder="Username" required="true"/>
	</div>
    <div class="col-md-12 password">
		<input type="password" name="password" class="form-control" placeholder="Password" required="true"/>
	</div>
	<div class="col-md-12">
		<button type="submit" name="submit" class="btn btn-default btn-primary button">LOGIN</button>
	</div>
</div>
</form>
<?php

	session_start();
	if(isset($_SESSION['admin']))
	header('Location:admin1.php');
	
	if(isset($_POST['submit']))
	{
		$username = $_POST['username'];
		$pwd = $_POST['password'];

		if($username == 'break_it' && $pwd=='you_cant')
		{
			$_SESSION['admin'] = 'rahul';
			header('Location:admin1.php');
		}
		else
		{
			echo '<div class="alert alert-danger col-md-offset-4 col-md-4" style="text-align:center">Invalid username or Password</div>';
		}
	}
 ?>
</body>
<script type="text/javascript">
	$(function(){
		$("#logout_btn").css('display','none');
	});
</script>
</html>
