<%-- 
    Document   : index
    Cren : Jul 7, 2014, 4:46:12 PM
    Author     : Parth Mewara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ONLINE VOTING SOLUTION</title>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
         <script type="text/javascript" src="js/coin-slider.min.js"></script>
        <link rel="stylesheet" href="css/coin-slider-styles.css" type="text/css" />
    </head>
    
    <center>
      <body background="img/bg-body.jpg" style="background-size: cover; background-color:cornflowerblue ; font-family: cursive; font-size:20px ; font-style: oblique">
      <h1 style="color: cyan;text-decoration: underline">ONLINE VOTING PORTAL</h1>
      <div id="start">     
<a href="admin/admin_login.jsp" style="color: brown; font-size: larger">ADMIN DATA ENTRY</a>
<br>
<br>
<a href="user/user_dataentry.jsp" style="color: sienna; font-size: larger">USER DATA ENTRY</a>
</div>
      
<div id="coin-slider">
    <a href="img/backimage4.jpg" target="_blank">
        <img src='img/backimage4.jpg' style="height: 200px;width: 300px">
    </a>
    <a href="img/backimage6.jpg" target="_blank">
        <img src='img/backimage6.jpg' style="height: 200px;width: 300px">
    </a>
</div>


 <script type="text/javascript">
 //$(document).ready(function() {
        $('#coin-slider').coinslider({height: 200, width: 300});
 //   })   ;
</script>
<%--    <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="img/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="img/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="img/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
   --%>
</body>
    </center>
    </html>
