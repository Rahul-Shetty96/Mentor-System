<!DOCTYPE html>
<html>
<head>
	<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <meta content="utf-8" http-equiv="encoding">
	<title>Welcome</title>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
	<script src="../js/jquery.js" type="text/javascript"></script>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<script src="../js/admin1.js" type="text/javascript"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	<script src="../js/validation.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-filestyle/1.2.1/bootstrap-filestyle.min.js"></script>
	<link href="../css/header.css" rel="stylesheet">
	
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	<link rel="stylesheet" href="../font-awesome/css/font-awesome.min.css" />
	<link rel="stylesheet" href="../css/footer.css">
	<link href="../css/admin1.css" rel="stylesheet">
				 
    
</head>

<body>

<?php 
	session_start();
	if(!isset($_SESSION['admin']))
	{
		header('Location:logform.php');
	}
	require 'header.php'; 

	if(isset($_POST['logout']))
	{
		session_destroy();
		header('Location:logform.php');
	}
?>
<div class="container-fluid">
	<div class="row">
	<div class="welcome col-md-offset-1 col-md-3">Welcome Admin!</div>
	</div>
</div>
<!--part 1-->
<div class="container-fluid">
	<div class="row row1b">
	    <div class=" col-md-offset-1">
			<button class="btn btn-default btn-primary" id="button1" onclick='slidetoggle(this.id,"#add_student",0)'> Add Students&nbsp&nbsp
			<span class="glyphicon glyphicon-menu-down"</span></button>
		</div>
	</div>
</div><!-- button for add students-->


<div id="add_studentp"></div><!-- slider for add students-->


<div class="container-fluid" id="add_student">
	<div class="row row1h container-fluid">
		<div class="col-md-6 col-md-offset-3 row1h_1">
			<div class="col-md-12" id="csvtext">
				Upload a CSV file
			</div>
			<div class="col-md-12">
			   <form action="../php/csvupload.php" enctype="multipart/form-data" method="post">
						<div class="form-group col-md-3 col-md-offset-2" id="selectclass">
			 					 <select class="form-control" id="sel1" name="class">
			    					 <option>D10</option>
			   						 <option>D15</option>
			   						 <option>D20</option>
			  					 </select>
						</div>
						<div class="col-md-3">
							<input type="file"  accept=".csv" class="filestyle" name="csv" id="image_src" data-input="false" data-iconName="fa fa-upload" data-buttonText="Upload File" required/>
						</div>
						<div class="col-md-2">
							<button class="btn btn-default btn-primary" name="submit"> ADD</button>
						</div>
				</form>
			</div>
		</div><!--.row1h_1-->
	</div><!--.row1h-->
</div><!--container-fluid(#add_student)-->

<!--part 1-->

<hr/>


<!--part 2-->

<div class="container-fluid">
	<div class="row row2b">
	    <div class=" col-md-offset-1">
			<button class="btn btn-default btn-primary" id="button2" onclick='slidetoggle(this.id,"#change_student",1)'> Change Student Details&nbsp&nbsp<span class="glyphicon glyphicon-menu-down"</span></button>
		</div>
	</div>
</div><!-- button for change students-->

<div id="change_studentp"></div><!-- slider for change students-->

<div class="container-fluid" id="change_student">
	<div class="row row2h container-fluid">
		<div class="row2h_1 col-md-12">
			
			<!-- retrieve using ajax-->
				<div class="col-md-3">
					<div id="select_student">Select Class : </div>
				</div>
				<div class="form-group col-md-3" id="selectclass">
				 		<select class="form-control class_change_student" id="sel1">
							 <option>D10</option>
							 <option>D15</option>
							 <option>D20</option>
				    	</select>
				</div>
				<div class="col-md-3">
					<input type="text" class="form-control rollno_change_student" name="rollno_change_student" placeholder="Roll no"/>
				</div>
				<div class="col-md-3">
					<button class="btn btn-primary"  onclick="change_student()" type="button">GET</button>
				</div>
			
			<div class="alert alert-danger msg col-md-offset-3 col-md-6">
    		</div>

    		<div class="form_change_student col-md-12" id="change_student_form">
	    		
		    		<div class="col-md-offset-1 col-md-2">
		    			<input type="text" class="form-control csname" name="name" placeholder="Name" required>
		    		</div>
		    		<div class="col-md-3">
		    			<input type="email" class="form-control csemail" name="email" placeholder="Email" required>
		    			<input type="hidden" class="cshidden" name="hiddenemail">
		    		</div>
		    		<div class="form-group col-md-1" id="selectclass">
				 		<select class="form-control csclass" id="sel1" name="class" required>
							 <option>D10</option>
							 <option>D15</option>
							 <option>D20</option>
				    	</select>
					</div>
		    		<div class="col-md-1">
		    			<input type="number" class="form-control csroll" name="rollno" placeholder="Roll no" required>
		    		</div>
		    		<div class="col-md-3">
		    			<input type="email" class="form-control csmentor" name="mentor" placeholder="Mentor" required>
		    		</div>
		    		<div class="col-md-1">
		    			<button type="button" name="submit" onclick="change_student_form()" class="btn btn-default btn-primary">CHANGE</button>
		    		</div>
	    			
	    	
    		</div>
		</div>
	</div><!--.row2h-->
</div><!--container-fluid(change_student)-->


<!-- part 2 ends-->

<hr/>

<!--part 3-->

<div class="container-fluid">
	<div class="row row3b">
	    <div class=" col-md-offset-1">
			<button class="btn btn-default btn-primary" id="button3" onclick='slidetoggle(this.id,"#add_mentor",2)'>Create Mentor Account&nbsp&nbsp
			<span class="glyphicon glyphicon-menu-down"</span></button>
		</div>
	</div>
</div><!-- button for creating mentor-->


<div id="add_mentorp"></div><!-- slider for add students-->

<div class="container-fluid" id="add_mentor">
	<div class="row row3h">
	<form id="adminlogin">
			<!-- ajax call-->
				<div class="form-group col-md-3 col-md-offset-1">
					<input type="text" class="form-control mentor_name" placeholder="Mentor name" name="mentor_name">
				</div>
				<div class="col-md-3 form-group">
					<input type="email" class="form-control mentor_email" placeholder="Mentor Email" name="mentor_email">
				</div>
				<div class="form-group col-md-2">
					<input type="text" class="form-control mentor_pwd" placeholder="Password" name="mentor_pwd">
				</div>
				<div class="col-md-3">
					<button class="btn btn-primary" >Create</button>
				</div>
	</form>
	</div><!--.row2h-->
</div><!--container-fluid(change_student)-->

<!-- part 3 ends-->

<hr/>

<div class="container-fluid">
	<div class="row row4b">
	    <div class=" col-md-offset-1">
			<button class="btn btn-default btn-primary" id="button4" onclick='slidetoggle(this.id,"#assign_mentor",3)'> Assign Mentor&nbsp&nbsp
			<span class="glyphicon glyphicon-menu-down"</span></button>
		</div>
	</div>
</div><!-- button for assigning mentor-->

<div id="assign_mentorp"></div><!-- slider for add students-->

<div class="container-fluid" id="assign_mentor">
	<div class="row row4h">
			<div class="col-md-offset-2 col-md-8 row4h_1">
					<div class="col-md-4">
						<button class="btn btn-primary" onclick="assign('D10')">D10</button>
					</div>
					<div class="col-md-4">
						<button class="btn btn-primary" onclick="assign('D15')">D15</button>
					</div>
					<div class="col-md-4">
						<button class="btn btn-primary"  onclick="assign('D20')">D20</button>
					</div>
			</div><!--.row4h_1-->
	</div><!--.row4h-->
</div><!--container-fluid(assign_mentor)-->

<!-- part 4 ends-->

<hr/>
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


<?php require'footer.php' ?>	
</body>
</html>