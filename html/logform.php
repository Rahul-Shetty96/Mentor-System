		
<!DOCTYPE html>
<html lang="en-us">
<meta charset="utf-8" />
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<?php
		include 'dbconnect.php';
                if(isset($_SESSION['suser'])){
		header('location:  ');
        }
?>

<div class="form">
<div class="header"><h2>Sign In</h2></div>
<div class="login">
<form action="" method="post">
<ul>
<li>
<span class="un"><i class="fa fa-user"></i></span><input type="Email" name="email" required class="text" placeholder="Email"/></li>
<li>
<span class="un"><i class="fa fa-lock"></i></span><input type="password" name="password" required class="text" placeholder="Password"/></li>
<?php
			if(isset($_SESSION['error'])){
				if($_SESSION['error']=='true'){
					echo '<p id="error">Invalid EmailID or Password.</p>';
					$_SESSION['error']='false';
				}
				else{
					echo '<p></p>';
				}
			}
				else{
				echo '<p></p>';	
			}
		?>		

<li>
<div class="cen"><input  type="submit" value="Login" class="btn"></div>
</li>
<li><div class="span"><span class="ch"><input type="checkbox" id="r"> <label for="r">Remember Me</label> </span> <span class="ch"><a href="#">Forgot Password?</a></span></div></li>
</ul>
</form>
</div>
</div>
</body>
</html>
