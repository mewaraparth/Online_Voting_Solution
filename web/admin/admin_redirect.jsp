<%-- 
    Document   : admin_redirect
    Created on : Jul 16, 2014, 12:54:30 AM
    Author     : Parth Mewara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ONLINE VOTING PORTAL</title>
    </head>
    <body>
    <h1  style="text-align:center ; color:blueviolet ; text-decoration:underline" >ADMIN REDIRECT</h1>
    </body>
</html>
<%
        //for admin authentication
      String admit=(String)request.getAttribute("admit");
       if(admit.equals("unsuccess"))
       {RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
       rd.forward(request, response);
       }
       else
       {RequestDispatcher rd=request.getRequestDispatcher("admin_dataentry.jsp");
       rd.forward(request, response);}   
       
        
    %>