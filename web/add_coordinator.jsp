<%-- 
    Document   : add_coordinator
    Created on : 17 May, 2021, 8:29:01 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="with=device-width, initial-scale=1.0" charset="utf-8">
	<title>Add Coordinator</title>
	<!-- <link rel="stylesheet" type="text/css" href="demo.css"> -->
	<link rel="stylesheet" type="text/css" href="register-style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
</head>
<body>
	<section class="header">
            <%String adminusername=(String)session.getAttribute("adminusername");
            System.out.println("Im in jspcode ");
                                                     if(adminusername==null || adminusername=="")
                                                      {
                                                                      System.out.println("Im in if case ");

                                                          response.sendRedirect("admin_login.html");
                                                       }
            %>
		<nav>
			<a href="index.html" class="logo"><h2>recru<span style="color: #f44336">IT</span></h2> </a>
			<div class="nav-links" id="nav-links">				
				<i class="fa fa-times" onclick="hideMenu()"></i>
				<ul class="list">
					<li><a href="admin_home.jsp">HOME</a></li>
					<li><a href="add_coordinator.jsp">ADD COORDINATOR</a></li>
					<li><a href="campus_placements.jsp">CAMPUS PLACEMENTS</a></li>
					<li><a href="admin_logout.jsp">LOGOUT</a></li>
				</ul>
			</div>
			<i class="fa fa-bars" onclick="showMenu()"></i>
		</nav>

		
		<div class="container">
		<div class="title">Add Coordinator</div>
		<form action="CoordinatorRegisterChecking" method="post">
			<div class="user_details">				
					<div class="input-box">
					<span class="details">Username</span>
					<input type="text" name="username" placeholder="Enter your username" required>
				</div>
				<div class="input-box">
					<span class="details">E-mail</span>
					<input type="text" name="email" placeholder="Enter your email" required>
				</div>
				<div class="input-box">
					<span class="details">Phone Number</span>
					<input type="text" name="phoneno" placeholder="Enter your number" required>
				</div>
				<div class="input-box">
					<span class="details">Password</span>
					<input type="password" name="password" placeholder="Enter your password" required>
				</div>				
				<div class="input-box">
					<span class="details">Date of Birth</span>
					<input type="date" name="dob" required>
				</div>
				<div class="input-box">
					<span class="details">Address</span>
					<input type="textarea" name="address" required>
				</div>							
			</div>
			<div class="gender-details">
				<input type="radio" name="gender" id="dot-1" value="male">
				<input type="radio" name="gender" id="dot-2" value="female">
				<input type="radio" name="gender" id="dot-3" value="prefer not to say">
					<span class="gender-title">Gender</span>
					<div class="category">
						<label for="dot-1">
							<span class="dot one"></span>
							<span class="gender">Male</span>
						</label>
						<label for="dot-2">
							<span class="dot two"></span>
							<span class="gender">Female</span>
						</label>
						<label for="dot-3">
							<span class="dot three"></span>
							<span class="gender">Prefer not to say</span>
						</label>
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
