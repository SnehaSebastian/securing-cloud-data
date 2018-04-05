<%-- 
    Document   : login_check
    Created on : Feb 13, 2018, 10:34:56 AM
    Author     : Sneha
--%>

<%@page import="dbconnection.connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check LogIn</title>
    </head>
    <body>
        <%              String email=request.getParameter("email");
                        String password=request.getParameter("password");
                        connection con=new connection();
                        String sql="SELECT * FROM `registration` WHERE `email`='"+email+"' and `password`='"+password+"' and `type`='1'";
                        ResultSet r=con.getDetails(sql);
                        r.last();
                        int x=r.getRow();
                        if(x==1)
                        {   
                            session.setAttribute("name",r.getString("name"));
                            session.setAttribute("email",r.getString("email"));
                            
                           
                            response.sendRedirect("index.jsp");
                            
                        }
                        else
                        {
                           response.sendRedirect("signin_err.jsp");
                        }
        %>
    </body>
</html>
