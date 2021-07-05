<%-- 
    Document   : coordinator_logout
    Created on : 17 May, 2021, 2:55:04 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            session.invalidate();
            response.sendRedirect("coordinator_login.html");
        %>
    </body>
</html>
