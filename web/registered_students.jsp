<%-- 
    Document   : registered_students
    Created on : May 21, 2021, 1:57:17 PM
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
	<title>Placements</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
</head>
<body>
	<div class="container">
<!------ Header ------>
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

		<div class="table-head">
			<h3>Registered students</h3>
		</div>
 <%  
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

                                                  String query = "SELECT FirstName,Enrollment from studentpllacementdtls";

                                                  rs = st.executeQuery(query);
                                                  
            %>
        

		<div class="table-box">
			<div class="table-row table-head">
				<div class="table-cell first-cell">
					<p>Student Name</p>
				</div>
				<div class="table-cell">
					<p>View Profile</p>
				</div>
                                                        

                                <div class="table-cell">
                                    <p>Status</p>
				</div>
			
                      </div>
                     <% while (rs.next()) 
                                                             {
                
                
                                                             %>
			<div class="table-row">
				<div class="table-cell first-cell">
                                    <p class="para-style"><%=rs.getString(1)%></p>
				</div>
				<div class="table-cell">
                                    <form action="coordinatorviewprofilepage.jsp" method="post">
                                        <input type="hidden"  name="Enrollment" value="<%=rs.getString(2)%>"> 
                                        <p><button>View Profile</button></p>
                                    </form>
                                </div>
                                <div class="table-cell">
					<p>Registered</p>
				</div>
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
	</section>
<!------  Content  ------>
		
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
