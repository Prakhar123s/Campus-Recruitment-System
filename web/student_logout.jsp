<%-- 
    Document   : student_logout
    Created on : 20 May, 2021, 1:21:36 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
       <%
            session.invalidate();
            response.sendRedirect("student_login.html");
        %>
    </body>
</html>
