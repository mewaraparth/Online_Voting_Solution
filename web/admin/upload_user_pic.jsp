<%-- 
    Document   : upload_user_pic
    Created on : 20 Mar, 2015, 4:20:48 PM
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

        <form  method="post" enctype="multipart/form-data"  action="upload_user_pic_authenticate.jsp" >
             <input type="text" name="voterid" value="<%=request.getParameter("voterid")%>">
            <input type="file" name="file" size="50">
            <input type="submit" value="upload pic">
        </form>
    </body>
</html>
    