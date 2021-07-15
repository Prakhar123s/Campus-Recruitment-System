<%-- 
    Document   : vew_materials
    Created on : 17 May, 2021, 8:18:10 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="with=device-width, initial-scale=1.0" charset="utf-8">
	<title>Campus Placement</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
</head>
<body>
	<div class="container">
<!------ Header ------>
	<section class="header">
		<nav>
			<a href="index.html" class="logo"><h2>recru<span style="color: #f44336">IT</span></h2> </a>
			<div class="nav-links" id="nav-links">				
				<i class="fa fa-times" onclick="hideMenu()"></i>
				<ul class="list">
					<li><a href="student_home.jsp">HOME</a></li>
					<li><a href="upload_material1.jsp">UPLOAD PLACEMENTS</a></li>
					<li><a href="view_placement.jsp">VIEW PLACEMENTS</a></li>
					<li><a href="campus_placement3.jsp">CAMPUS PLACEMENTS</a></li>
					<li><a href="view_materials.jsp">MATERIALS</a></li>
					<li><a href="">LOGOUT</a></li>
				</ul>
			</div>
			<i class="fa fa-bars" onclick="showMenu()"></i>
		</nav>

		<div class="table-head">
			<h3>View Materials</h3>
		</div>

		<div class="table-box">
			<div class="table-row table-head">
				<div class="table-cell first-cell">
					<p>Material name</p>
				</div>
				<div class="table-cell">
					<p>View</p>
				</div>
				<div class="table-cell">
					<p>Download</p>
				</div>
			</div>
			<div class="table-row">
				<div class="table-cell first-cell">
					<p><a href="#">TCS</a></p>
				</div>
				<div class="table-cell">
					<p><a href="#">View</a></p>
				</div>
				<div class="table-cell">
					<p><a href="#">Download</a></p>
				</div>
			</div>
			<div class="table-row">
				<div class="table-cell first-cell">
					<p><a href="#">Wipro</a></p>
				</div>
				<div class="table-cell">
					<p><a href="#">View</a></p>
				</div>
				<div class="table-cell">
					<p><a href="#">Download</a></p>
				</div>
			</div>
		</div>
	</section>

<!----- Footer ----->
	<!-- <section class="footer">
		<h4></h4>		
		<div class="icons">
			<i class="fa fa-facebook"></i>
			<i class="fa fa-twitter"></i>
			<i class="fa fa-instagram"></i>
			<i class="fa fa-linkedin"></i>
		</div>
		<p>Made with <i class="fa fa-heart-o"></i> by Campus Recruitment team.</p>
	</section> -->
	</div>
</body>
</html>