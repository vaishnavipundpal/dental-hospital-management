<%-- 
    Document   : doctorlist
    Created on : 2 Feb, 2024, 7:00:27 PM
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
                       <h2 style="text-align: center"><b>Doctor's List</b></h2>
        <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Sr.No</th>
      <th scope="col"> Name</th>
      <th scope="col"> Address</th>
       <th scope="col"> Contact</th>
        <th scope="col"> Email</th>
         <th scope="col">Specialization</th>
          <th scope="col"> Image</th>
     
     
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
          String sql="select * from admin_adddoctor_tbl";
          ResultSet rs=st.executeQuery(sql);
          while(rs.next())
          {
          
        
      %>
    <tr>
         <form action="ad_doctor_info" method="post">
      <th scope="row"><%=i++%></th>
      <input type="hidden" name="did" value="<%=rs.getString("doctorid")%>">
       <td><input type="text" name="txt_dname" value="<%=rs.getString("docname")%>" class="form-control"></td>
      <td><input type="text" name="txt_address" value="<%=rs.getString("docaddress")%>" class="form-control"></td>
      <td><input type="text" name="txt_dcontact" value="<%=rs.getString("doccontact")%>" class="form-control"></td>
      <td><input type="text" name="txt_demail" value="<%=rs.getString("docemail")%>" class="form-control"></td>
      <td><input type="text" name="txt_dspl" value="<%=rs.getString("docspl")%>" class="form-control"></td>
      <td><input type="text" name="txt_dimg" value="<%=rs.getString("docimage")%>" class="form-control"></td>
      
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
