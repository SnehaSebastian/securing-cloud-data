<%-- 
    Document   : arraysplit
    Created on : Feb 25, 2018, 11:23:03 AM
    Author     : sneha
--%>

<%@page import="dbconnection.connection"%>
<%@page import="org.apache.commons.lang.RandomStringUtils"%>
<%@page import="java.io.*"%>
<%@page import="javareadtextfile.ReadFile,javareadtextfile.EncSource"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ArraY spLit</title>
    </head>
    <body>
<%
        String email=session.getAttribute("email").toString();
        String name=session.getAttribute("name").toString();
        
        String path=request.getParameter("path");
    
               ReadFile rf = new ReadFile();
               EncSource es=new EncSource();
        // The text file location of your choice
        String filename = path;
         
        try
        {
            String[] lines = rf.readLines(filename);
            int n = lines.length;
            
            String[] a = new String[(n + 1)/2];
            String[] b = new String[n - a.length];
            String Text1="",Text2="",eText1="",eText2="";
                       
            for (int i = 0; i < n; i++)
		{
			if (i < (a.length))
                        {
                            a[i] = lines[i];
                            Text1+=a[i];
                        }
			else
                        {
                            b[i - a.length] = lines[i];
                            Text2+=b[i - a.length];
                        }
		}
                eText1=es.Encrypter(Text1, 1);
                eText2=es.Encrypter(Text2, 1);
                

//		System.out.println(Arrays.toString(a));
//		System.out.println(Arrays.toString(b));
            
//            for (String line : lines) 
//            {
//                System.out.println(line);
//            }

//Random name generation start
                        String ext = "txt";
                        String name1 = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
                        String name2 = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
//Random name generation ends

//write start
                  BufferedWriter outputWriter1 = null;
                  BufferedWriter outputWriter2 = null;
                  outputWriter1 = new BufferedWriter(new FileWriter("C:/webapps/KeYExposureInCloud/web/Cloud-1/"+name1));
                  outputWriter2 = new BufferedWriter(new FileWriter("C:/webapps/KeYExposureInCloud/web/Cloud-2/"+name2));
                  
                  String path1 = "C:/webapps/KeYExposureInCloud/web/Cloud-1/"+name1;
                  String path2 = "C:/webapps/KeYExposureInCloud/web/Cloud-2/"+name2;
                 
                  outputWriter1.write(eText1);
                  outputWriter1.newLine();
                    
                  outputWriter2.write(eText2);
                  outputWriter2.newLine();
                  
                  
                  outputWriter1.flush();  
                  outputWriter1.close();
                  outputWriter2.flush();  
                  outputWriter2.close();

//write end
//                  out.println(" "+name1+" "+name2+" "+path1+" "+path2+" ");
            
            String saveFile=request.getParameter("file");

            connection con=new connection();
            String sql="INSERT INTO `cloud_storage`(`email`,`name`,`file`,`name1`,`name2`,`path1`,`path2`)VALUES ('"+email+"','"+name+"','"+saveFile+"','"+name1+"','"+name2+"','"+path1+"','"+path2+"')";
            con.InsertUpdate(sql);
            session.setAttribute("up",true);
            response.sendRedirect("cloud_drive.jsp");
                                      
        }
        catch(IOException e)
        {
            // Print out the exception that occurred
            out.println("Unable to create "+filename+": "+e.getMessage());              
        }
            

%>
    </body>
</html>
