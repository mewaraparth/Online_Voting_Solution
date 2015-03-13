<%-- 
    Document   : admin_update_entry
    Created on : Jul 7, 2014, 9:50:29 PM
    Author     : Parth Mewara
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
        <title>ONLINE VOTING PORTAL</title>
    <h1  style="text-align:center ; color:blueviolet ; text-decoration:underline" >UPDATE USER DETAILS</h1>
    </head>
    <center>
    <body background="backimage9.jpg">
            


        
<%
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs","root","root123");
    Statement st=con.createStatement();
   
    
    %>
    
    
        <%
  // String voteridd=(String)request.getAttribute("voteridd");
    String voteridd=request.getQueryString();
        %> 
 
   
        <%
//   out.println(voteridd);
          ResultSet rs=st.executeQuery("select * from user_all where voter_id='"+voteridd+"'");
        rs.next();
        %>

        <%--
            <%=rs.getString(1)%> 
        --%>

    <form action="admin_validate_entry.jsp" method="post" style="color:black">
        <table width="1200" border=5 align="center" vspace="50"><center>
<tr>
<th scope="row" height="50"></th>
<td>
    <input type="text" required="" value="<%=rs.getString(1)%>" name="voterid" maxlength="11"/>
</td>
<th scope="row" height="50">Sex</th>
<td>
    <%
    if(rs.getString(6).equals("m"))   
    {
        %>
    
        Male <input type="radio" name="sex" value="m" checked="" /> Female<input type="radio" value="f" name="sex"/>   
</td>
<%
    }
    else
    {
        %>
        Male <input type="radio" name="sex" value="m" /> Female<input type="radio" value="f" name="sex" checked=""/>   
</td>
<%
    }
        %>

<th scope="row" height="50">Date Of Birth</br>(ddmmYYYY)</th>
<td>
    <input type="text" required=""value="<%=rs.getString(5)%>" name="dob" maxlength="8" />
</td>   
</tr>


 <tr>
     <th scope="row" height="50">First Name</th>
     <td>
         <input type="text" required=""value="<%=rs.getString(2)%>" name="fname" maxlength="20"/>
     </td>
     <th scope="row" height="50">Middle Name</th>
     <td>
         <input type="text" name="mname" value="<%=rs.getString(3)%>" maxlength="20"/>
     </td>
     <th scope="row" height="50">Last Name</th>
     <td>
         <input type="text" value="<%=rs.getString(4)%>" required=""name="lname" maxlength="20"/>
     </td>
 </tr>
     
<tr>
    <th scope="row" height="50" >
<left>
    <%
    if(rs.getString(7).equals("father"))
    {
    %>
    
    Father <input type="radio" name="hf" required=""value="father"  checked="" style="alignment-adjust: central">
    Husband <input type='radio' name="hf" required=""value="husband" style="alignment-adjust: central">
    <%
    }
    else
    {
        %>
        
    Father <input type="radio" name="hf" required=""value="father" style="alignment-adjust: central">
    Husband <input type='radio' name="hf" required=""value="husband" checked="" style="alignment-adjust: central">
        <%
        
        }
    %>
    
       
        
</left></br>
Father's / Husband's Name</br>
</th>
<td>
    <input type="text" value="<%=rs.getString(8)%>" name="fhname" required=""maxlength="50" />
</td>
<th scope="row" height="50">Mobile Number</th>
<td>
    <input type="text" value="<%=rs.getString(9)%>" name="mobile" required=""maxlength="10" />
</td>
<th scope="row" height="50">Address</th>
<td>
    <input type="text" value="<%=rs.getString(10)%>" name="address" required=""maxlength="150" />
</td>   
</tr>


<tr>

<th scope="row" height="50">State</th>
<td>
    <input type="text" value="<%=rs.getString(11)%>" name="state" required=""maxlength="20" />
</td>
<th scope="row" height="50">Tehsil</th>
<td>
    <input type="text" value="<%=rs.getString(12)%>" name="tehsil" required="" maxlength="20"/>
</td>
<th scope="row" height="50">City</th>
<td>
    <input type="text" value="<%=rs.getString(13)%>" name="city" required=""maxlength="20" />
</td>
</tr>

<tr>

<th scope="row" height="50">Pin Code</th>
<td>
    <input type="text" value="<%=rs.getString(14)%>"  name="pin" required=""maxlength="6"/>
</td>
<td></td>
<td></td>
<th scope="row" height="50">Pan Card Number</th>

<td>
    <input type="text" value="<%=rs.getString(15)%>" name="pancard"  maxlength="10"/>
</td>

</tr>


<tr>
    

<th scope="row" height="50">Passport ID Number</th>
<td>
    <input type="text" value="<%=rs.getString(16)%>" name="passport"/>
</td>
<td></td>
<td></td>
<th scope="row" height="50">Aadhaar Card Number</th>
<td>
    <input type="text" value="<%=rs.getString(17)%>" name="aadhaar" maxlength="12" />
</td>

</tr>
           
</table>
    <input type="hidden" name="update" value="<%=rs.getString(1)%>"/>        

<input type="submit" value="UPDATE"/>
    </form>
</br>
</br>

            <a href="admin_view_detail.jsp">GO TO DETAIL VIEW PAGE</a><br>
            <br>
            <a href="admin_dataentry.jsp">GO TO DATA ENTRY PAGE</a>
            <br>
            <br>

            <a href="index.jsp">GO TO THE ADMIN/USER SELECTION PANEL</a>

    
        </body>
    </center>
</html>
   <%
    
    }//try
    catch(Exception e)
    {out.println(e);}
    %>