<%-- 
    Document   : appoinmentlist
    Created on : 2 Feb, 2024, 7:36:00 PM
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
        <%@include file="user_header.jsp" %>
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
                    <h2 style="text-align: center"><b> Appointment List</b></h2>
        <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Sr.No</th>
      <th scope="col"> Name</th>
     
       <th scope="col"> Contact</th>
       <th scope="col"> Age</th>
        <th scope="col"> Address</th>
         <th scope="col">sername</th>
       <th scope="col">docname</th>
       <th scope="col"> Date</th>
        <th scope="col"> Time</th>
     
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
          String sql="select * from user_addappointment_tbl";
          ResultSet rs=st.executeQuery(sql);
          while(rs.next())
          {
          
        
      %>
    <tr>
         <form action="useradd_appoinment" method="post">
      <th scope="row"><%=i++%></th>
      <input type="hidden" name="apid" value="<%=rs.getString("id")%>">
      <td><input type="text" name="txt_pname" value="<%=rs.getString("patname")%>" class="form-control"></td>
     
      <td><input type="text" name="txt_pcontact" value="<%=rs.getString("patcontact")%>" class="form-control"></td>
      <td><input type="text" name="txt_page" value="<%=rs.getString("patage")%>" class="form-control"></td>
       <td><input type="text" name="txt_address" value="<%=rs.getString("pataddress")%>" class="form-control"></td>
       <td><input type="text" name="txt_sername" value="<%=rs.getString("sname")%>" class="form-control"></td>
       <td><input type="text" name="txt_docname" value="<%=rs.getString("dname")%>" class="form-control"></td>
      
        <td><input type="text" name="txt_pdate" value="<%=rs.getString("appdate")%>" class="form-control"></td>
      <td><input type="text" name="txt_ptime" value="<%=rs.getString("apptime")%>" class="form-control"></td>       
      
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
