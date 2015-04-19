<%-- 
    Document   : admin_login
    Created on : Jul 15, 2014, 5:50:50 PM
    Author     : Parth Mewara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ONLINE VOTING PORTAL</title>
    </head>
    <center>
            <h1  style="text-align:center ; color:blueviolet ; text-decoration:underline" >ADMIN LOGIN</h1>
        <body background="backimage9.jpg"><br><br>
        <form action="admin_authenticate.jsp" method="post" style="text-align: center"> 
                
           ADMIN USER NAME <input type="text" name="user"><br><br>
           ADMIN PASSWORD <input type="password" name="pass"><br><br>
           <input type="submit" value="Proceed">

        </form></br>
        </br>
        <a href="admin_login.jsp">Go to main page</a>
    </body>
    </center>
</html>
