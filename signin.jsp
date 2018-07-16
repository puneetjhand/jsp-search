<%-- 
    Document   : signin
    Created on : May 3, 2017, 12:06:19 AM
    Author     : pc
--%>





<%-- 
    Document   : view
    Created on : Apr 4, 2017, 12:29:06 AM
    Author     : pc
--%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %> 
<%@ page import="javax.servlet.jsp.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<body>
  
 <%!
        Connection con;
        PreparedStatement p;
     public void jspInit()
{
      try
{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eduhub","root","9229");
           p=con.prepareStatement("select * from signup where Name=? and Password=?");
}
catch(Exception e)
{
}
}
%>
<%

           String a=request.getParameter("t1");
           String d=request.getParameter("t2");
            p.setString(1,a);
            p.setString(2,d);
            ResultSet rs;
            rs=p.executeQuery();
if(rs.next())
{
out.print("successfully");
}

  else
      {
     out.print(" u r not valid user");
              }

      
       %>
       
     
 
      
    </body>
</html>
