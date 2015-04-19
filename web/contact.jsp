<%-- 
    Document   : contact
    Created on : 22 Mar, 2015, 5:17:10 PM
    Author     : Parth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>

<body>

    
  <div id="main">  
          <%-- div id=nav here --%>
           <%@include file="navigation.jsp" %>          
  
   <%-- div id="sidebar"  here --%> 
    <%@include file="sidebar.jsp" %>
 
        
      <div class="content">
       
          <form action="contact_authenticate.jsp" method="get">
              <table>
                  <tr>
                      <th>
                          Name*
                      </th>
                      <td>
                          <input type="text" required="" name="name">
                      </td>
                  </tr>
                  
                  <tr>
                      <th>
                          Email*
                      </th>
                      <td>
                          <input type="email" required="" name="email">
                      </td>
                  </tr>
              
                 <tr>
                      <th>
                          Subject*
                      </th>
                      <td>
                          <select name="subject" required="">
                                  <option value="feedback">
                                      Feedback
                                  </option>
                                  <option value="suggestion">
                                      Suggestion
                                  </option>
                              </select>
                      </td>
                  </tr>
                  <tr>
                      <th>
                          Message*
                      </th>
                      <td>
                          <textarea cols="50" rows="5"  required="" name="message"></textarea>
                      </td>
                  </tr>              
              
              </table>
              <p>Fields with * are Mandatory</p>
              <input type="submit" value="submit" >
          </form>
          
          
          
          
          
      </div>
    </div>
        
            <%@include file="footer.jsp" %>
        
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
