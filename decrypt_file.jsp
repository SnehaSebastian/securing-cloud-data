<%-- 
    Document   : decrypt_file
    Created on : Feb 28, 2018, 11:31:59 AM
    Author     : Sneha
--%>

<%@page import="dbconnection.connection"%>
<%@page import="org.apache.commons.lang.RandomStringUtils"%>
<%@page import="javareadtextfile.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*" %>
<%@page import="javareadtextfile.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File_Decrypter</title>
    </head>
    <body>
        <%
         String email=session.getAttribute("email").toString();          
         String path1=request.getParameter("path1");
         String path2=request.getParameter("path2");
         String Text1="", Text2="";
         
               ReadFile rf = new ReadFile();
        // The text file location of your choice
                String filename1 = path1;
                String filename2 = path2;
                String[] lines = rf.readLines(filename1);
                int n = lines.length;
                                     
                for (int i = 0; i < n; i++){    Text1+=lines[i];    }
                
                lines = rf.readLines(filename2);
                n = lines.length;
                                    
                for (int i = 0; i < n; i++){    Text2+=lines[i];    }
                
        EncSource ES=new EncSource();
        String Plain1=ES.Decrypter(Text1, 1);
        String Plain2=ES.Decrypter(Text2, 1);
        String Plain=Plain1+Plain2;
        
                
//            out.print(Text1);
//            out.print("<br><br><br><br><br>");
//            out.print(Plain);
            

//Random name generation start
                        String ext = "txt";
                        String name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
                       
//Random name generation ends

//write start
                  BufferedWriter outputWriter = null;
                 
                  outputWriter = new BufferedWriter(new FileWriter("C:/webapps/KeYExposureInCloud/web/OrigiNal/"+name));
                 
                  
                  String path = "C:/webapps/KeYExposureInCloud/web/OrigiNal/";
                  String fname=name;
                 
                  outputWriter.write(Plain);
                  outputWriter.newLine();
                  outputWriter.flush();  
                  outputWriter.close();

//write end
   
//update path start
                        connection con=new connection();
                        String sql="UPDATE `cloud_storage` SET `path` = '"+path+"',`fname` = '"+fname+"' where email='"+email+"'";
                        con.InsertUpdate(sql);
//update path ends

                        String location="select * from cloud_storage where email='"+email+"'";
                        ResultSet r=con.getDetails(location);
                        while(r.next())
                        {
                            String loc=r.getString("path");
                            String f=r.getString("fname");
                            
                        response.sendRedirect("download.jsp?path="+loc+"&fname="+f);
                        }


//                  
        %>

    </body>
</html>
