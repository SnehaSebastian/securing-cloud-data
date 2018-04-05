<%-- 
    Document   : logout
    Created on : feb 14, 2018, 5:44:41 PM
    Author     : sneha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogOut</title>
    </head>
    <body>
      <%

            session.invalidate();

            response.sendRedirect("../index.jsp");
 
      %>
    </body>
</html>
