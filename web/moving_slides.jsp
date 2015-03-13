<%-- 
    Document   : moving_slides
    Created on : 18 Feb, 2015, 10:34:25 AM
    Author     : Parth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="css/coin-slider-styles.css" type="text/css" />

    </head>
    <body>
        <div id="coin-slider" style="border: 1px solid black;">
              
          <a style="border: 2px solid cyan;" href="photos/govote_itscool.jpg" target="_blank">
              <img src='photos/govote_itscool1.jpg' >
              </a>
              <a href="photos/ink_hand.jpg" target="_blank">
                  <img src='photos/ink_hand1.jpg'>
              </a>
              <a href="photos/no_divisive_voting.jpg" target="_blank">
                  <img src='photos/no_divisive_voting1.jpg'>
              </a>
              <a href="photos/vote_daag.jpg" target="_blank">
                  <img src='photos/vote_daag1.jpg'>
              </a>
              <a href="photos/your_vote_your_voice.jpg" target="_blank">
                  <img src='photos/your_vote_your_voice1.jpg'>
              </a>
        </div>
        
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script  type="text/javascript" src="js/coin-slider.js"></script>
       <script type="text/javascript">
 $(document).ready(function() {
        $('#coin-slider').coinslider({height: 300, width: 700});
           });
        </script>      
    </body>
</html>
