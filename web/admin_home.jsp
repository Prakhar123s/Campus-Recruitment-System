<%-- 
    Document   : admin_home
    Created on : 17 May, 2021, 8:15:09 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="with=device-width, initial-scale=1.0" charset="utf-8">
	<title>Admin Home</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
</head>
<body>
	<div class="container">
<!------ Header ------>
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
	</section>
<!------  Content  ------>
		<div class="text-box">
			<h1>Welcome Admin</h1>						
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
