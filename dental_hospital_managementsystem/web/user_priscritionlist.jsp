<%-- 
    Document   : user_priscritionlist
    Created on : 10 Feb, 2024, 9:32:34 PM
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
        <title>Prescription Page</title>
         <%@include file="user_header.jsp" %>
        <style>
            body{
                height:800px;
            }
            </style>
    </head>
    <body>
       
        <div class="container">
             <form action="adpriscription.jsp" method="post">
            <h1><b>Prescription</b></h1>
       <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Sr.no</th>
      <th scope="col">Patient  Name</th>
      <th scope="col">Contact</th>
      <th scope="col"> Age</th>
       <th scope="col">Date</th>
        <th scope="col">Image</th>
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
          String sql="select * from admin_addprescription_tbl where patname='"+session.getAttribute("uname")+"'";
          ResultSet rs=st.executeQuery(sql);
          while(rs.next())
          {
          
        
      %>
    <tr>
         <th scope="row"><%=i++%></th>
     
      
      <td><%=rs.getString("patname")%></td>
      <td><%=rs.getString("patcontact")%></td>
      <td><%=rs.getString("patage")%></td>
      <td><%=rs.getString("predate")%></td>
      <td><a href="<%=rs.getString("primg")%>" >View</a></td>
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

