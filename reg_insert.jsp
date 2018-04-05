<%-- 
    Document   : reg_insert
    Created on : Jan 19, 2018, 10:16:21 AM
    Author     : sneha
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbconnection.connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration insert</title>  
    </head>
    <body>
        <%  connection con=new connection();
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            String location=request.getParameter("location");
//          out.println(""+name+" "+email+" "+password+" "+location+"");
                    String sq="SELECT * FROM `registration` WHERE `email`='"+email+"'";
                    ResultSet rs=con.getDetails(sq);
                    rs.last();
                    int i=rs.getRow();
                    
            if(i==1)
            {
                 session.setAttribute("success",true);
               %>
    <center><br><br><br><br>
        <a href="signup.jsp"><h4>Click here to register back</h4></a>        
    </center>
               <%
                   
            }
            else
            {
            String sql="INSERT INTO `registration`(`name`, `email`, `password`, `location`)VALUES ('"+name+"','"+email+"','"+password+"','"+location+"')";
            con.InsertUpdate(sql);
            response.sendRedirect("signin.jsp");
            session.setAttribute("register",true);
            }
            
        %>
    </body>
</html>
