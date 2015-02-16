<%-- 
    Document   : user_dataentry
    Created on : Jul 10, 2014, 10:55:55 AM
    Author     : Parth Mewara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ONLINE VOTING PORTAL</title>
    <h1  style="text-align:center ; color: brown ; text-decoration:underline"> Entry FORM</h1>    </head>

<body background="backimage5.jpg" style="background-size: cover">
<center>
    
       <form action="user_register_form.jsp" method="post" style="color:black" >
           <table width="800" border="1" align="center" cellpadding="0" cellspacing="0" vspace="50">
  
  <tr>

<th hspace="100" height="60" vspace="100" width="400">Voter ID        </th>
  <td>
      <input type="text" value="" hspace="100" required="" name="voterid" maxlength="11"/>
      </td>
      
  </tr>
  <tr>
<th hspace="100" height="60" vspace="100" width="400">Date Of Birth(ddmmyyyy)      </th>
  <td>
      <input type="text" value="" hspace="100" name="dob" required=""maxlength="8"/>
      </td>
  </tr>
   <tr>

<th hspace="100" height="60" vspace="100" width="400">First Name      </th>
  <td>
      <input type="text" value="" hspace="100" name="fname"required="" maxlength="20"/>
      </td>
      
  </tr>
  
   <tr>

<th hspace="100" height="60" vspace="100" width="400">Middle Name      </th>
  <td>
      <input type="text" value="" hspace="100" name="mname" maxlength="20"/>
      </td>
      
  </tr> <tr>

<th hspace="100" height="60" vspace="100" width="400">Last Name      </th>
  <td>
      <input type="text" value="" hspace="100" name="lname"required="" maxlength="20"/>
      </td>
      
  </tr>
           </table>
           <input type="submit" value="SUBMIT">
           
           
       </form>
    
                
</center>

</body>
    
</html>
