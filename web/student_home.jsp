<%-- 
    Document   : student_home
    Created on : 17 May, 2021, 8:17:13 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="with=device-width, initial-scale=1.0" charset="utf-8">
	<title>Campus Recruitment System</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
</head>
   
<body>
	<div class="container">
<!------ Header ------>
	<section class="header">
            <%String username=(String)session.getAttribute("username");
            System.out.println("Im in jspcode ");
                                                     if(username==null || username=="")
                                                      {
                                                                      System.out.println("Im in if case ");

                                                          response.sendRedirect("student_login.html");
                                                       }
            %> 
		<nav>
			<a href="index.html" class="logo"><h2>recru<span style="color: #f44336">IT</span></h2> </a>
			<div class="nav-links" id="nav-links">				
				<i class="fa fa-times" onclick="hideMenu()"></i>
				<ul class="list">
                                                                                    
					<li><a href="student_home.jsp">HOME</a></li>
                                                                                                 <li><a href="view_profile.jsp">VIEW PROFILE</a></li>
					<li><a href="view_placement.jsp">VIEW PLACEMENTS</a></li>					
					<li><a href="student_logout.jsp">LOGOUT</a></li>
				</ul>
			</div>
			<i class="fa fa-bars" onclick="showMenu()"></i>
		</nav>
	</section>
<!------  Content  ------>
		<div class="text-box">
			<h1>Welcome &ensp;<%=username%></h1>
						
		</div>
	</section>

	</div>
</body>
</html>