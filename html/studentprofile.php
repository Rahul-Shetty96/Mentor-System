<!DOCTYPE html>
<html lang="en">
<head>
 <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <meta content="utf-8" http-equiv="encoding">
	<title>Student Profile</title>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
	<script src="../js/jquery.js" type="text/javascript"></script>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<script src="../js/admin1.js" type="text/javascript"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-filestyle/1.2.1/bootstrap-filestyle.min.js"></script>
	<link href="../css/header.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <link href="../css/footer.css" rel="stylesheet">
</head>
<body>
<?php include 'header.php'; 
    
    session_start();
    if(!isset($_SESSION['email']))
    header('Location:logform2.php');
    require '../php/dp.php';
    if(isset($_POST['logout']))
    {
    session_destroy();
    header('Location:logform2.php');
    }
    $res = mysqli_query($con,"select name,email,admission_year,address_home,address_current,num_own,cgpi,hobbies,ambitions,reason_for_eng,father_name,address_father,num_father,mother_name,address_mother,num_mother,affinity,no_sibling,acad_issue,nonacad_issue from studentprofile where email = '".$_GET['email']."'"); 
    $a = mysqli_fetch_assoc($res);
    $name = $a['name'];
    $email = $a['email'];
    $year = $a['admission_year'];
    $addhome = $a['address_home']; 
    $addcurr = $a['address_current'];
    $contact = $a['num_own'];
    $cgpi = $a['cgpi'];
    $hobby = $a['hobbies'];
    $aim = $a['ambitions'];
    $reason = $a['reason_for_eng'];
    $father_name = $a['father_name'];
    $address_father = $a['address_father'];
    $num_father = $a['num_father'];
    $mother_name = $a['mother_name'];
    $address_mother = $a['address_mother'];
    $num_mother = $a['num_mother'];
    $affinity = $a['affinity'];
    $no_sibling = $a['no_sibling'];
    $acad_issue = $a['acad_issue'];
    $nonacad_issue = $a['nonacad_issue'];
    ?>

    
 <div class="container class_name">
	<ul class="breadcrumb">
	    <li><a href="mentorpage.php">Home</a></li>
	</ul>
</div>

<div class="container-fluid">
  <div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Name of the Student</div>
    <div class="col-md-6"><?php echo $name ;?></div>
  </div><hr width="70%">
    <div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Email Address</div>
    <div class="col-md-6"><?php echo $email ;?></div>
  </div><hr width="70%">
  <div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Year of Admission</div>
    <div class="col-md-6"><?php echo $year ;?></div>
  </div><hr width="70%">
  <div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">CGPI</div>
    <div class="col-md-6"><?php echo $cgpi ;?></div>
  </div></div><hr width="70%">
  <div class="container-fluid">
  <div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Contact Number</div>
    <div class="col-md-6"><?php echo $contact ;?></div>
    </div><hr width="70%">
  
  <div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Home Address</div>
    <div class="col-md-6"><?php echo $addhome ;?></div>
  </div><hr width="70%">
    <div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Current Address</div>
    <div class="col-md-6"><?php echo $addcurr ;?></div>
  </div></div><hr width="70%">
  <div class="container-fluid">
  <div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Likes/Dislikes/Hobbies</div>
    <div class="col-md-6"><?php echo $hobby ;?></div>
  </div><hr width="70%">
  <div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Aim/Ambition</div>
    <div class="col-md-6"><?php echo $aim ;?></div>
  </div><hr width="70%">
   <div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Reason for joining Engineering</div>
    <div class="col-md-6"><?php echo $reason ;?></div>
  </div></div><hr width="70%">
  <div class="container-fluid">
<div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Father's Name</div>
    <div class="col-md-6"><?php echo $father_name ;?></div>
  </div><hr width="70%">
<div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Contact Number</div>
    <div class="col-md-6"><?php echo $num_father ;?></div>
  </div><hr width="70%">
<div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Work Address</div>
    <div class="col-md-6"><?php echo $address_father ;?></div>
  </div></div><hr width="70%">
  <div class="container-fluid">
<div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Mother's Name</div>
    <div class="col-md-6"><?php echo $mother_name ;?></div>
  </div><hr width="70%">
<div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Contact Number</div>
    <div class="col-md-6"><?php echo $num_mother ;?></div>
  </div><hr width="70%">
<div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Work Address</div>
    <div class="col-md-6"><?php echo $address_mother ;?></div>
  </div></div><hr width="70%">
  <div class="container-fluid">
<div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Affinity/Fear towards parents</div>
    <div class="col-md-6"><?php echo $affinity ;?></div>
  </div><hr width="70%">
<div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">No. of Siblings</div>
    <div class="col-md-6"><?php echo $no_sibling ;?></div>
  </div><hr width="70%">
<div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Academic Issues</div>
    <div class="col-md-6"><?php echo $acad_issue ;?></div>
  </div><hr width="70%">
<div class="row">
    <div class="col-md-offset-3 col-md-3" style="color: blue;font-size: 18px;">Other Issues</div>
    <div class="col-md-6"><?php echo $nonacad_issue ;?></div>
  </div><hr width="70%">
  </div>
   <?php require'footer.php'; ?>
</body>
</html>