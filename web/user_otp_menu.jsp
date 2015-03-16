<%-- 
    Document   : user_otp_menu
    Created on : 14 Mar, 2015, 2:39:16 AM
    Author     : Parth
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ONLINE VOTING PORTAL</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
     
    </head>
    <body>
           <%@include file="navigation.jsp" %>

    
 
        <div id="main">

          
            <jsp:include page="sidebar.jsp"></jsp:include>
            
        <div class="content">

            <blockquote><a href="user_otp_generation.jsp">Request for an OTP</a></blockquote>
            <blockquote><a href="user_otp_entry.jsp">Already Have an OTP</a></blockquote>
        </div>
    </div>
    
        <%@include file="footer.jsp" %>
    
    </body>
</html>
