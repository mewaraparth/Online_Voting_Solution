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

    
  <div id="main">  f
          <%-- div id=nav here --%>
           <%@include file="navigation.jsp" %>          
  
   <%-- div id="sidebar"  here --%> 
    <%@include file="sidebar.jsp" %>
 
    <%-- slider bar --%>     
       
        <div id="sliderbar" style="margin-top: 20px; margin-left: 275px;">
            <%@include  file="moving_slides.jsp" %>
        </div>    
        
      <div class="content">
        <h1>Welcome to the Online Voting Solution</h1>
        <p>This is a simple to use Web Portal through which you can cast <strong>YOUR VOTE</strong> with Simplicity and Efficiency.</p>
        <p>With the aim of empowering <strong>YOU</strong> with the power of Democracy and to put up <strong>YOUR VOICE</strong> where it matters.</p>
        <p>The ONLINE VOTING SOLUTION is the <strong>POWER in YOUR HANDS</strong>.</p>
        &nbsp;
        &nbsp;
        <h2>Browser Compatibility</h2>
        <p>This template has been tested in the following browsers:</p>
        <ul>
          <li>Internet Explorer 8</li>
          <li>Internet Explorer 7</li>
          <li>FireFox 10</li>
          <li>Google Chrome 17</li>
          <li>Safari 4</li>
        </ul>
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
