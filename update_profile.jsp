<%-- 
    Document   : update_reg
    Created on : feb 19, 2018, 1:25:24 PM
    Author     : sneha
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Registration</title>
    </head>
        <%
            String email=session.getAttribute("email").toString();
            String name=request.getParameter("name");
            String location=request.getParameter("location");
            String password=request.getParameter("password");
          
            try {
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure-cloud-data", "root", "");
            String sql="UPDATE `registration` SET `name` = '"+name+"', `location` = '"+location+"', `password` = '"+password+"' WHERE `email`='"+email+"'";
            PreparedStatement psmt=con.prepareStatement(sql);
            psmt.executeUpdate();
            } 
            catch (Exception e) {System.err.println(e.getMessage());}
            response.sendRedirect("signin.jsp");
%>

    </body>
</html>
