<%-- 
    Document   : newjsp
    Created on : Jul 15, 2014, 6:45:45 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
<%
String admit=(String)request.getAttribute("admit");
if(admit.equals("success"))
{out.println("Success")}
else
out.println("unsuccess");
%>
