<%-- 
    Document   : newjsp
    Created on : 18 Mar, 2015, 12:36:06 PM
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
        
        <form name="form1" method="post" enctype="multipart/form-data" action="../admin/uploadpic.jsp">
            <p>
                <input type="file" name="file"  size="50"  >
                <input type="file" name="file1" size="20">
           </p>
           <p>
                <input type="submit" name="submit" value="Upload file" />
            </p>
               
             
        </form>          
        <%
            String fpath=pageContext.getServletConfig().getServletContext().getRealPath("/");
            fpath=fpath+"Example\\image-folder";
        %>
        <%=fpath%>
    </body>
</html>
