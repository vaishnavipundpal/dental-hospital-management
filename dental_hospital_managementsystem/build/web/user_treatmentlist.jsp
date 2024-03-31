<%-- 
    Document   : user_treatmentlist
    Created on : 10 Feb, 2024, 1:43:30 PM
    Author     : om
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
        <title>Treatment list Page</title>
         <%@include file="user_header.jsp" %>
        <style>
            body{
                height:800px;
            }
            </style>
    </head>
    <body>
       
        <div class="container">
             <form action="useradd_appoinment" method="post">
            <h1><b>Treatments</b></h1>
       <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Sr.no</th>
      <th scope="col">Patient Name</th>
      <th scope="col">Treatment Name & Information</th>
      
    </tr>
  </thead>
  <tbody>
        <% 
         Connection cn=null;
         Statement st=null;
         
         int i=1;
         
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dental_hospital","root","ROOT");
          st=cn.createStatement();
          String sql="select * from admin_addtreatment_tbl where tretname='"+session.getAttribute("uname")+"'";
          ResultSet rs=st.executeQuery(sql);
          while(rs.next())
          {
          
        
      %>
    <tr>
         <form action="useradd_appoinment" method="post">
         <th scope="row"><%=i++%></th>
     
      
      <td><%=rs.getString("tretname")%></td>
      <td><%=rs.getString("tretinfo")%></td>
         </form>
    </tr>
    <%
      
          }
        
        }catch(Exception ex)
        {
           
        }
    %>
    
  </tbody>

 
</table>
             </form>
        </div>   
    </body>
</html>
