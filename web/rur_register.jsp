<!DOCTYPE HTML>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>ONLINE VOTING SOLUTION</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
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
          <form action="rur_register_mobentry.jsp" method="post">
              
           <table  width="600" border="02" align="center" cellpadding="0" cellspacing="0" vspace="50" style="margin-left: 50px;">
  
               <tr>

                   <th hspace="100" height="60" vspace="10" width="350">
                       Voter ID
                   </th>
                   <td>

                       <input type="text" value="" hspace="10" required="" name="voterid" maxlength="11"/>
                   </td>
               </tr>
  
  
               <tr>

                   <th hspace="10" height="60" vspace="10" width="350">
                       Date Of Birth(ddmmyyyy)
                   </th>
                   <td>
                       <input type="text" value="" hspace="10" name="dob" required=""maxlength="8"/>
      
                   </td>
               </tr>
   
               <tr>

                   <th hspace="10" height="60" vspace="10" width="350">
                       First Name
                   </th>
                   <td>
                       <input type="text" value="" hspace="10" name="fname"required="" maxlength="20"/>
                   </td>
               </tr>
               <tr>
                   <th hspace="10" height="60" vspace="10" width="350">
                       Middle Name      
                   </th>
                   <td>
                       <input type="text" value="" hspace="10" name="mname" maxlength="20"/>
                   </td>
               </tr>
               
               <tr>
                   <th hspace="10" height="60" vspace="10" width="350">
                       Last Name
                   </th>
                   <td>
                       <input type="text" value=""name="lname"required="" maxlength="20"/>
                   </td>
               </tr>
             
           </table>

           <input type="submit" value="SUBMIT" style="margin-left: 320px; "/>

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
