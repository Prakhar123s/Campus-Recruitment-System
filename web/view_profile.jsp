<%-- 
    Document   : view_profile
    Created on : May 21, 2021, 2:29:49 PM
    Author     : sai
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="with=device-width, initial-scale=1.0" charset="utf-8">
	<title>Student Registration</title>
	<!-- <link rel="stylesheet" type="text/css" href="demo.css"> -->
	<link rel="stylesheet" type="text/css" href="register-style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
</head>
<body>
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

		
		<div class="container">
		<div class="title">View Profile</div>
                 <% 
                                                String studentusername=(String)session.getAttribute("username");
                
                
                                              Connection con=null;
                                              Statement st=null;
                                              ResultSet rs=null;
                                                try 
                                              {
                                                  Class.forName("com.mysql.jdbc.Driver");
                                                  System.out.println("Driver Loaded");

                                                  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","root");
                                                  System.out.println("Connected");

                                                  st = con.createStatement();

                                                  String query = "SELECT *from student where enrollment='"+studentusername+"' ";

                                                  rs = st.executeQuery(query);
            %>
                   
           

		<form action="#">
			<div class="user_details">				
					<div class="input-box">
                                                    <% while (rs.next()) 
                                                             {
                
                
                                                             %>
                                                         
                                            
                                                                                                 <span class="details">Enrollment Number</span>
					<span style="font-weight: 700"><%=rs.getString(1)%></span>
					<!-- <input type="text" placeholder="Enter your username" required> -->
				</div>
				<div class="input-box">
					<span class="details">E-mail</span>
					<span style="font-weight: 700"><%=rs.getString(2)%></span>
					<!-- <input type="text" placeholder="Enter your email" required> -->
				</div>
				<div class="input-box">
					<span class="details">Phone Number</span>
					<span style="font-weight: 700"><%=rs.getString(3)%></span>
					<!-- <input type="text" placeholder="Enter your number" required> -->
				</div>								
				<div class="input-box">
					<span class="details">Date of Birth</span>
					<span style="font-weight: 700"><%=rs.getString(5)%></span>
					<!-- <input type="date" required> -->
				</div>
				<div class="input-box">
					<span class="details">Address</span>
					<span style="font-weight: 700"><%=rs.getString(6)%></span>
					<!-- <input type="textarea" required> -->
				</div>	
				<div class="input-box">
					<span class="details">Gender</span>
					<span style="font-weight: 700"><%=rs.getString(7)%></span>
					<!-- <input type="textarea" required> -->
				</div>
                                        <%
            }
            con.close();
        } 
        catch (ClassNotFoundException e) 
        {
            System.out.println(e);
        } 
        catch (SQLException e) 
        {
            System.out.println(e);
        }
        %>
			</div>
			<!-- <div class="gender-details">
				<input type="radio" name="gender" id="dot-1">
				<input type="radio" name="gender" id="dot-2">
				<input type="radio" name="gender" id="dot-3">
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
				</div>        -->
		</form>
         	</div>
              
                
	</section>

</body>
</html>