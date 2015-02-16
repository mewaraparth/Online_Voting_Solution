<%-- 
    Document   : admin_authenticate
    Created on : Jul 16, 2014, 12:36:26 AM
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
            <h1  style="text-align:center ; color:blueviolet ; text-decoration:underline" >ADMIN AUTHENTICATE</h1>
      
    </body>
</html>

<%
        String s1=request.getParameter("user");

        String s2=request.getParameter("pass");

            if(s1.equals("parth"))
            {
             if(s2.equals("root123"))
             {
            
            request.setAttribute("admit","success");
            
            }
             else
            request.setAttribute("admit","unsuccess");
            }
            else
            {
                request.setAttribute("admit","unsuccess");
            }
            
            RequestDispatcher rd=request.getRequestDispatcher("admin_redirect.jsp");
            rd.forward(request, response);

  %>
  