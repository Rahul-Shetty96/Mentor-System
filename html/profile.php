<!DOCTYPE html>
<html lang="en">
<head>
 <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <meta content="utf-8" http-equiv="encoding">
	<title>Welcome</title>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
	<script src="../js/jquery.js" type="text/javascript"></script>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<script src="../js/profile.js" type="text/javascript"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-filestyle/1.2.1/bootstrap-filestyle.min.js"></script>
	<link href="../css/header.css" rel="stylesheet">
	<link href="../css/profile.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	<link rel="stylesheet" href="../css/footer.css">

	<!-- For datepicker -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
</head>
<body>

<?php require 'header.php'; 
	  session_start();
    if(!isset($_SESSION['email']))
    header('Location:logform2.php');

    require '../php/dp.php';

    if(isset($_POST['logout']))
    {
    session_destroy();
    header('Location:logform2.php');
    }

      $res = mysqli_query($con,"select name,class,roll_no from mentee where email = '".$_GET['email']."'");
      $a = mysqli_fetch_assoc($res);
      $name = $a['name'];
      $clss = $a['class'];
      $roll = $a['roll_no'];
    ?>

<div class="container class_name">
	<ul class="breadcrumb">
	    <li><a href="mentorpage.php">Home</a></li>
	    <li><a href="studentprofile.php?email=<?php echo $_GET['email'] ?>"><?php echo $name." (Class : ".$clss." &nbsp&nbsp Roll no : ".$roll." )"; ?></a></li>
	</ul>
</div>

<div class="container issue">
	
	<div class="row">
		<div class="col-md-6">
			<div class="col-md-12 text_header">
				Issues Discussed Today ( <?php echo date("j F, Y"); ?> )
			</div>
			<div class="col-md-12 issuebox">
				<textarea maxlength="100" cols="30" class="form-control" class="textarea"></textarea>
			</div>
			<div class="error alert alert-danger">
			Please enter the issue with <?php echo $name; ?> 
			</div>

			<div class="btn_div">
				<button class="btn btn-default btn-primary" onclick="submit_issue()">Submit</button>

			</div>
			
		</div>

		<div class="col-md-6">
			<div class="col-md-12 text_header">
				Decide Next Meet
			</div>
			<div class="col-md-12 datebox">
				<input type="text" id="datepicker"  class="date">
				<div class="date_error alert alert-danger">
					Please select a date
				</div>
			</div>
			<div class="btn_div">
				<button class="btn btn-default btn-primary" onclick="next_meet()">Submit</button>
			</div>
		</div>
	</div>
</div>

<div class="container table_container">
	<table class="table table-striped">
    <thead>
      <tr>
        <th>Issues Discussed</th>
		    <th>Date of Meet</th>
      </tr>
    </thead>
	    <tbody>
	   
	    </tbody>
    </table>
</div>

<?php require'footer.php' ?>


<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Message</h4>
        </div>
        <div class="modal-body">
          <p id="modal_text"></p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>


</body>
</html>