<%-- 
    Document   : userappoinmentlist
    Created on : 12 Feb, 2024, 8:20:05 PM
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
        <title>Appointment list </title>
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
                    <h2 style="text-align: center"><b> Appointments</b></h2>
        <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Sr.No</th>
      <th scope="col">Name</th>
     
       <th scope="col"> Adddress</th>
       <th scope="col"> Contatct</th>
        <th scope="col"> Age</th>
      
       <th scope="col">Date</th>
        <th scope="col">time</th>
       
     
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
          String sql="select * from user_addappointment_tbl where email='"+session.getAttribute("email")+"'";
          ResultSet rs=st.executeQuery(sql);
          while(rs.next())
          {
          
        
      %>
    <tr>
         <form action="useradd_appoinment" method="post">
      <th scope="row"><%=i++%></th>
      <input type="hidden" name="apid" value="<%=rs.getString("id")%>">
    <input type="hidden"  value="<%=request.getParameter("dname")%>" name="">
     <input type="hidden"  value="<%=request.getParameter("sname")%>" name="">
      <td><%=rs.getString("patname")%></td>
      <td><%=rs.getString("pataddress")%></td>
      <td><%=rs.getString("patcontact")%></td>
      <td><%=rs.getString("patage")%></td>
    
      <td><%=rs.getString("appdate")%></td>
      <td><%=rs.getString("apptime")%></td>       
      
         
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
