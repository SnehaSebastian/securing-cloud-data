<%-- 
    Document   : auto_download
    Created on : Feb 25, 2018, 2:44:51 PM
    Author     : Sneha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Download</title>
    </head>
    <body>
       <%
       String path=request.getParameter("path");
       //
       %>
       
       <a href="<%=path%>">here</a>
    </body>
</html>
