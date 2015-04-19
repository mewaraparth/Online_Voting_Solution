<%-- 
    Document   : contender_entry
    Created on : 15 Mar, 2015, 7:39:13 PM
    Author     : Parth
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
      
        <form action="contender_entry_validate.jsp">
        <table border='2'>
                <td>
                    Enter The Candidate Name
                </td>
            <tr>
                <td>
                    First Name
                </td>
                <td>
                    <input type="text" name="contenderfname" required="">
                </td>
            </tr>
            <tr>
                <td>
                    Middle Name
                </td>
                <td>
                    <input type="text" name="contendermname">
                </td>
            </tr>
            <tr>
                <td>
                    Last Name
                </td>
                <td>
                    <input type="text" name="contenderlname" required="">
                </td>
            </tr>
            
            <td>
                Enter Party Details
            </td>


            <tr>
                <td>
                    Enter The Party Name
                </td>
                <td>
                    <input type="text" name="partyname" required="">
                </td>
            </tr>
            <tr>
                <td>
                    Enter The Party Symbol
                </td>
                <td>
                    <input type="file" name="partysymbol" value="hello" required="">
                </td>
            </tr>
            
        </table>
        
            <input type="submit" >
    </form>

    </body>
</html>
