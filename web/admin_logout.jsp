<%-- 
    Document   : admin_logout
    Created on : 22 May, 2021, 11:34:58 AM
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
            response.sendRedirect("admin_login.html");
        %>
    </body>
</html>
