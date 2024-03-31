<%-- 
    Document   : feedbacklist
    Created on : 26 Dec, 2023, 1:50:42 PM
    Author     : om
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback list </title>
        <%@include file="Admin_header.jsp" %>
        <style>
            body{
                height:800px;
            }
            </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                       <h2 style="text-align:center"><b>Feedback List</b></h2>
        <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Sr.No</th>
      <th scope="col">Patient Name</th>
      <th scope="col">Contact</th>
      <th scope="col">Feedback</th>
     
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
          String sql="select * from user_feedback_tbl";
          ResultSet rs=st.executeQuery(sql);
          while(rs.next())
          {
          
        
      %>
    <tr>
         <form action="userr_feedback" method="post">
      <th scope="row"><%=i++%></th>
       <input type="hidden" name="fid" value="<%=rs.getString("id")%>">
        <td><input type="text" name="txt_username" value="<%=rs.getString("patname")%>" class="form-control"></td>
       <td><input type="text" name="txt_usercon" value="<%=rs.getString("pat_contact")%>" class="form-control"></td>
       <td><input type="text" name="txt_feedback" value="<%=rs.getString("pat_feedback")%>" class="form-control"></td>
  
             
      <td><input type="submit" name="btnsubmit" value="Update" class="btn btn-info"></td>
        <td><input type="submit" name="btnsubmit" value="Delete" class="btn btn-danger"></td>
        
        
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
        </div>
        </div>
            </div>
    </body>
</html>
