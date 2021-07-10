<%-- 
    Document   : placementregister
    Created on : 20 May, 2021, 12:24:13 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="with=device-width, initial-scale=1.0" charset="utf-8">
	<title>Application Form</title>
	<!-- <link rel="stylesheet" type="text/css" href="demo.css"> -->
	<link rel="stylesheet" type="text/css" href="register-style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
</head>
<body>
	<section class="header">
		<nav>
			<a href="index.html" class="logo"><h2>recru<span style="color: #f44336">IT</span></h2> </a>
			<div class="nav-links" id="nav-links">				
				<i class="fa fa-times" onclick="hideMenu()"></i>
				<ul class="list">
					<li><a href="student_home.jsp">HOME</a></li>
					<li><a href="view_profile.jsp">VIEW PROFILE</a></li>
					<li><a href="view_placement.jsp">VIEW PLACEMENTS</a></li>
					<li><a href="student_login.html">LOGOUT</a></li>
				</ul>
			</div>
			<i class="fa fa-bars" onclick="showMenu()"></i>
		</nav>

		
		<div class="container">
		<div class="title">Application Form</div>
		<form action="Applicationform" method="post">
			<div class="user_details">	
			<!-- First Name -->			
				<div class="input-box">
					<span class="details">First Name</span>
					<input type="text" name="studentfirstname" placeholder="Enter your First Name" required>
				</div>
			<!-- Last Name -->
				<div class="input-box">
					<span class="details">Last Name</span>
					<input type="text" name="studentlastname" placeholder="Enter your Last Name" required>
				</div>
			<!-- Address -->
				<div class="input-box">
					<span class="details">Address</span>
					<input type="textarea" name="studentaddress" placeholder="Enter your Address" required>
				</div>
			<!-- Enrollment -->
				<div class="input-box">
					<span class="details">Enrollment Number</span>
					<input type="text" name="studentenrollment" placeholder="Enter your Enrollment Number" required>
				</div>
			<!-- Phone Number -->
				<div class="input-box">
					<span class="details">Phone Number</span>
					<input type="text" name="studentphoneno" placeholder="Enter your Phone Number" required>
				</div>
			<!-- Email Address -->
				<div class="input-box">
					<span class="details">E-mail Address</span>
					<input type="text" name="studentemailaddress"  placeholder="Enter your E-mail" required>
				</div>
				<!-- Department -->
				<div class="input-box">
					<span class="details">Department</span>
					<input type="text" name="studentdepartment"  placeholder="Enter your Department" required>
				</div>
				<!-- Course -->
				<div class="input-box">
					<span class="details">Course</span>
					<input type="text" name="studentcourse" placeholder="Enter your Course" required>
				</div>	
				<!-- Placement Institute -->
				<div class="input-box">
					<span class="details">Placement Institute</span>
					<input type="text" name="studentinsitute" placeholder="Enter Placement Institute" required>
				</div>
				<!-- Confirmation -->
				<div>
					<input type="checkbox">
					<span class="details"> I hereby confirm that the above information is true and accurate and I agree<br> to abide by rules and regulations of the Library Service and those applicable to<br> this service.</span>
				</div>										
			</div>
			
			<div class="button">
				<input type="submit" value="Register">
			</div>
		</form>
	</div>
	</section>

</body>
</html>