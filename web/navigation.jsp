<%-- 
    Document   : navigation
    Created on : 25 Feb, 2015, 1:41:34 PM
    Author     : Parth
File for HEADER and Navigation Panel
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
    </head>
    <body>
    <div id="bg">
        <img src="img/Website-Design-Background-1366x768.jpg" alt="home">
    </div>
        <header>
      <div id="logo">
          <div id="logo_text" style="width: 350px;">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.jsp">ONLINE VOTING <span class="logo_colour">SOLUTION</span></a></h1>
          <h2>Simple & Efficient</h2>
        </div>
      </div> 
    
             <nav>
                 <div id="menu_container">
          <ul class="sf-menu" id="nav">
              <li><a href="rur.jsp">Register</a></li>
            <li><a href="page.html">Search Constituency</a></li>
            
            <%
                
                String voter;
                
                String name;
                
                voter=(String)session.getAttribute("voterid");
                name=(String)session.getAttribute("name");
                if(voter==null||voter=="invalid")
                {
            %>

            <%
                }//if(voter==null)
                else
                {
            %>
            <li><a href="user_otp_menu.jsp" style="text-decoration: blink #75CE00 solid">Vote Now</a></li>
            <%
                }//else (voter==null)
            %>
            
            
            
            <li><a href="#">Elections</a>
              <ul>
                <li><a href="#">Lok Sabha</a></li>
                <li><a href="#">Rajya Sabha</a>
   <%--
                    <ul>
                    <li><a href="#">Sub Drop Down One</a></li>
                    <li><a href="#">Sub Drop Down Two</a></li>
                    <li><a href="#">Sub Drop Down Three</a></li>
                    <li><a href="#">Sub Drop Down Four</a></li>
                    <li><a href="#">Sub Drop Down Five</a></li>
                  </ul>
    --%>
                </li>
                <li><a href="#">Zila Panchayat</a></li>
   <%--
                <li><a href="#">Drop Down Four</a></li>
                <li><a href="#">Drop Down Five</a></li>
   --%>
              </ul>
            </li>
            <li><a href="contact.jsp">Contact Us</a></li>
            
            <%
                
             
                voter=(String)session.getAttribute("voterid");
                name=(String)session.getAttribute("name");
                if(voter==null||voter=="invalid")
                {
            %>
            <li><a href="user_dataentry.jsp">Login</a></li>
            <%
                }//if(voter==null)
                
                else
                {
            %>
            <li><a><%=name%>
            <ul>
                <li><a href="user_profile.jsp">Profile</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
            </a></li>
            <%
                }//else (voter==null)
            %>
            
          </ul>
        </div>
      </nav>
    </header>
    

  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('ul.sf-menu').sooperfish();
      $('.top').click(function() {$('html, body').animate({scrollTop:0}, 'fast'); return false;});
    });
  </script>

  <script  type="text/javascript" src="js/coin-slider.js"></script>
    </body>
</html>
