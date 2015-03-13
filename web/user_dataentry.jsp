<%-- 
    Document   : us on : Jul 10, 2014, 10:55:55 AM
    Author     : Parth Mewara
user data entry for login
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

       <form action="user_register_form.jsp" method="post" style="color:black;"  >
           <table  width="600" border="02" align="center" cellpadding="0" cellspacing="0" vspace="50" style="margin-left: 50px;">
  
  <tr>
  <th hspace="100" height="60" vspace="100" width="350">Voter ID        </th>
  <td>
      <input type="text" value="" hspace="100" required="" name="voterid" maxlength="11"/>
      </td>
      
  </tr>
  
  <tr>
<th hspace="100" height="60" vspace="100" width="350">Date Of Birth(ddmmyyyy)      </th>
  <td>
      <input type="text" value="" hspace="100" name="dob" required=""maxlength="8"/>
      </td>
  </tr>
   <tr>

<th hspace="100" height="60" vspace="100" width="350">First Name      </th>
  <td>
      <input type="text" value="" hspace="100" name="fname"required="" maxlength="20"/>
      </td>
      
  </tr>
  
   <tr>

<th hspace="100" height="60" vspace="100" width="350">Middle Name      </th>
  <td>
      <input type="text" value="" hspace="100" name="mname" maxlength="20"/>
      </td>
      
  </tr> <tr>

<th hspace="100" height="60" vspace="100" width="350">Last Name      </th>
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
    
   
</body>
</html>
