<%-- 
    Document   : add_placement
    Created on : 17 May, 2021, 8:14:35 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="with=device-width, initial-scale=1.0" charset="utf-8">
	<title>Add Placements</title>
	<!-- <link rel="stylesheet" type="text/css" href="demo.css"> -->
	<link rel="stylesheet" type="text/css" href="register-style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
</head>
<body>
	<section class="header">
             <%String coordinatorusername=(String)session.getAttribute("username");
            System.out.println("Im in jspcode ");
                                                     if(coordinatorusername==null || coordinatorusername=="")
                                                      {
                                                                      System.out.println("Im in if case ");

                                                          response.sendRedirect("coordinator_login.html");
                                                       }
            %>
		<nav>
			<a href="index.html" class="logo"><h2>recru<span style="color: #f44336">IT</span></h2> </a>
			<div class="nav-links" id="nav-links">				
				<i class="fa fa-times" onclick="hideMenu()"></i>
				<ul class="list">
					<li><a href="coordinator_home.jsp">HOME</a></li>
					<li><a href="add_placement.jsp">ADD PLACEMENTS</a></li>
					<li><a href="registered_students.jsp">REGISTERED STUDENTS</a></li>
					<li><a href="campus_placements1.jsp">CAMPUS PLACEMENTS</a></li>					
					<li><a href="coordinator_logout.jsp">LOGOUT</a></li>
				</ul>
			</div>
			<i class="fa fa-bars" onclick="showMenu()"></i>
		</nav>

		
		<div class="container">
		<div class="title">Add Placements</div>
		<form action="AddPlacementDetails" method="post">
			<div class="user_details">				
				<div class="input-box">
					<span class="details">Company Name</span>
					<input type="text" id="pname" name="cname"  placeholder="Enter Placement Name" required>
				</div>
				<div class="input-box">
					<span class="details">Department Name</span>
					<input type="text" id="dname" name="dname" placeholder="Enter Department Name" required>
				</div>
				<div class="input-box">
                                                                                                 <span class="details">Placement Details</span>
					<input type="text" id="pname" name="pname" placeholder="Enter Details Here" required>
				
					</div>
													
			</div>
			<div class="button">
				<input type="submit" value="Upload">
			</div>
		</form>
	</div>
	</section>

</body>
</html>
