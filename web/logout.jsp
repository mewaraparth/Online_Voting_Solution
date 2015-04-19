<%-- 
    Document   : logout
    Created on : 10 Mar, 2015, 5:55:59 PM
    Author     : Parth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("voterid");
            session.removeAttribute("name");
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
