<%-- 
    Document   : admin_dataentry
    Created on : Jul 7, 2014, 4:47:32 PM
    Author     : Parth Mewara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ONLINE VOTING PORTAL</title>
   

    <h1  style="text-align:center ; color:blueviolet ; text-decoration:underline">ONLINE VOTING PORTAL</h1>
	 </head>

<center>
    <body background="backimage9.jpg">    
        
    <form action="admin_validate_entry.jsp" method="get" style="color:black">
        <table width="1200" border=5 align="center" vspace="50"><center>
<tr>
<th scope="row" height="50">Voter ID</th>
<td>
    <input type="text" required="" value="" name="voterid" maxlength="11"/>
</td>
<th scope="row" height="50">Sex</th>
<td>
    Male <input type="radio" name="sex" value="m" /> Female<input type="radio" value="f" name="sex"/>   
</td>
<th scope="row" height="50">Date Of Birth</br>(ddmmYYYY)</th>
<td>
    <input type="text" required=""value="" name="dob" maxlength="8" />
</td>   
</tr>


 <tr>
     <th scope="row" height="50">First Name</th>
     <td>
         <input type="text" required=""value="" name="fname" maxlength="20"/>
     </td>
     <th scope="row" height="50">Middle Name</th>
     <td>
         <input type="text" name="mname" value="" maxlength="20"/>
     </td>
     <th scope="row" height="50">Last Name</th>
     <td>
         <input type="text" value="" required=""name="lname" maxlength="20"/>
     </td>
 </tr>
     
<tr>
    <th scope="row" height="50" >
<left>
    Father <input type="radio" name="hf" required=""value="father" style="alignment-adjust: central">
    Husband <input type='radio' name="hf" required=""value="husband" style="alignment-adjust: central">
</left></br>
Father's / Husband's Name</br>
</th>
<td>
    <input type="text" value="" name="fhname" required=""maxlength="50" />
</td>
<th scope="row" height="50">Mobile Number</th>
<td>
    <input type="text" value="" name="mobile" required=""maxlength="10" />
</td>
<th scope="row" height="50">Address</th>
<td>
    <input type="text" value="" name="address" required=""maxlength="150" />
</td>   
</tr>


<tr>

<th scope="row" height="50">State</th>
<td>
    <input type="text" value="" name="state" required=""maxlength="20" />
</td>
<th scope="row" height="50">Tehsil</th>
<td>
    <input type="text" value="" name="tehsil" required="" maxlength="20"/>
</td>
<th scope="row" height="50">City</th>
<td>
    <input type="text" value="" name="city" required=""maxlength="20" />
</td>
</tr>

<tr>

<th scope="row" height="50">Pin Code</th>
<td>
    <input type="text" value=""  name="pin" required=""maxlength="6"/>
</td>
<td></td>
<td></td>
<th scope="row" height="50">Pan Card Number</th>

<td>
    <input type="text" value="" name="pancard"  maxlength="10"/>
</td>

</tr>


<tr>
    

<th scope="row" height="50">Passport ID Number</th>
<td>
    <input type="text" value="" name="passport"/>
</td>
<td></td>
<td></td>
<th scope="row" height="50">Aadhaar Card Number</th>
<td>
    <input type="text" value="" name="aadhaar" maxlength="12" />
</td>

</tr>
           
</table>
        
        <input type="hidden" name="update" value=""/>
<input type="submit" value="Proceed"/>
    </form>
</br>
</br>

<a href="admin_view_detail.jsp">GO TO DETAIL VIEW PAGE</a> <br>
<br>
            <a href="index.jsp">GO TO THE ADMIN/USER SELECTION PANEL</a>
</body>
</center>
        </html>
