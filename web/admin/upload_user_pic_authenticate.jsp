<%-- 
    Document   : newjsp1
    Created on : 19 Mar, 2015, 1:32:57 PM
    Author     : Parth
--%>

<%@page import="java.io.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.disk.*" %>
<%@page import="org.apache.commons.fileupload.servlet.*" %>
<%@page import="org.apache.commons.io.output.*" %>


        <%
        File file;
        int maxFileSize = 5000* 1024;
        int maxMemSize =5000*1024;
        ServletContext context= pageContext.getServletContext();
        //String filePath=pageContext.getServletConfig().getServletContext().getRealPath("/");
        String filePath=request.getSession().getServletContext().getInitParameter("userimg");
        out.println(filePath);
        String tempPath=filePath+"temp\\"; //temporary path for multipart
        //filePath=filePath+"Example\\image-folder\\";
        //filePath=filePath+"user_img\\";
       //String nameOfFile=(String)session.getAttribute("voterid"); //for user_data entry by admin
       // String nameOfFile="hello";
        String nameOfFile=request.getParameter("voterid");
        
       
        
      
        
        /*
        The path for storing the pics........
        */
        
    //    String filePath="C:\\Users\\Parth\\Documents\\NetBeansProjects\\Online_Voting_Solution\\web\\Example\\image-folder\\";
        
        //verify the content type
        
        String contentType = request.getContentType();
        if((contentType.indexOf("multipart/form-data")>=0))
        {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            //maximum size that will be stored in menmory
            factory.setRepository(new File(tempPath));
            
           %>

           <%
            
            //Create a new file upload handler
            ServletFileUpload upload=new ServletFileUpload(factory);
            //maximum file size to be uploaded
            upload.setSizeMax(maxFileSize);
            
            %>
            <%
                    
                    
            try
            {
            
                //Parse the request to get file items.
                List fileItems= upload.parseRequest(request);
                
                //Process the uploaded file items
                Iterator i=fileItems.iterator();
                
                out.println("<html>");
                out.println("<head>");
                out.println("<title> JSP FILE UPLOAD</title>");
                out.println("</head>");
                out.println("<body>");
  %>

  <%
                while(i.hasNext())
                {
                    FileItem fi=(FileItem)i.next();
                    
                    if(fi.isFormField()) //for the text part
                    {
                    String fieldName = fi.getFieldName();
                    String value = fi.getString();
                    nameOfFile=value;
                    }
                    
                    
                    
                    if(!fi.isFormField())
                    {
                    String fieldName=fi.getFieldName();
                    String fileName= fi.getName();
                    boolean isInMemory=fi.isInMemory();
                    long sizeInBytes= fi.getSize();
                    //write the file

                    if(fileName.lastIndexOf("\\")>=0)
                    {
                      //file=new File(filePath+fileName.substring(fileName.lastIndexOf("\\")));
                       // file=new File(filePath+((String)session.getAttribute("voterid")+".jpg"));     
                    //file=new File(filePath+"123.jpg")
                      file=new File((filePath+nameOfFile+fileName.substring(fileName.lastIndexOf("."))));
                    }
                    else
                    { 
                       //file=new File(filePath+fileName.substring(fileName.lastIndexOf("\\")+1));
                        file=new File((filePath+nameOfFile+fileName.substring(fileName.lastIndexOf("."))));
                    }
                    
                    /* for naming the file as file_(2)... 
                    
                    int i1 = 1;

                    while (file.exists()) { // keep renaming as file_(2) , file_(3) etc.
                    String path = file.getAbsolutePath();
                   int iDot = path.lastIndexOf(".");
                    file = new File(path.substring(0, iDot) +"_(" + ++i1 + ")" + path.substring(iDot));
                    }
                    
                    */

                   
                    fi.write(file);
                    %>
                    
                    Uploaded Filename: <%=filePath%><%=nameOfFile%><br>
                    <a href="admin_dataentry.jsp">Enter More Data</a>
                    
                        <%
                        }//if(!is formfield)
                    
                    
                }//while
            out.println("</body>");
            out.println("</html>");
   
        
        }catch(Exception ex)
                {
                out.println(ex);
                }
        }
        else
        {
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Upload</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<p>No FIle Uploaded</p>");
            out.println("</body>");
            out.println("</html>");
            
        }
        
            
                    
             %>