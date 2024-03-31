<%-- 
    Document   : adpriscription
    Created on : 17 Jan, 2024, 7:44:05 PM
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
        <title>Priscription Page</title>
                  <link rel="stylesheet" href="bootstrap.min.css">
         <%@include file="Admin_header.jsp"%>
         <style>
             body{
                 overflow: hidden;
                 background-size: cover;
                  background-image: url("image/medicine2.jpg");
                background-attachment: fixed;
                 
                
             }
             </style>
    </head>
    <body>
        <div class="row">
          <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="container">     
                    <form action="adpriscription" method="post">
                    <h1><b>Prescription</b></h1>
                
                       <div class="row">
                        <div class="col-sm-12">
                             <select  name="txt_pname" style="width: 320px;height: 35px" placeholder="Pateint Name"  class="form-control" required="">
                                   <% 
         Connection cn=null;
         Statement st=null;
         
         int i=1;
         
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dental_hospital","root","ROOT");
          st=cn.createStatement();
          String sql="select * from user_signup_tbl";
          ResultSet rs=st.executeQuery(sql);
          while(rs.next())
          {
          
        
      %>
                                    <option><%=rs.getString("uname")%></option>
                                    <%
      
          }
        
        }catch(Exception ex)
        {
           
        }
    %>
                                </select>
                             
                           
                        </div>
                    </div>
                <br>
                 <div class="row">
                        <div class="col-sm-12">
                            <input type="text" name="txt_pcontact" placeholder="Contact" class="form-control" required="">
                        </div>
                    </div>
                       <br>
                       <div class="row">
                        <div class="col-sm-6">
                          <input type="text" name="txt_page" placeholder="age" class="form-control" required="">
                        </div>
                            <div class="col-sm-6">
                          <input type="date" name="txt_date" placeholder="date" class="form-control" required="">
                        </div>
                    </div>
                   
                    <br>
                     <div class="row">
                        <div class="col-sm-12">
                              <input type="file" name="txt_primg" placeholder="Prescription image" class="form-control">
                           
                        </div>
                    </div>
  
                    
            
                    <br>
            <div class="row">
                         <div class="col-sm-2"></div> 
                        <div class="col-sm-8">
                            <input type="Submit" name="btn_submit" value="Add" class="btn btn-info" style="width:70px">
                            <input type="reset" name="btn_submit" value="Cancle" class="btn btn-danger" style="width:70px">
                        </div>
                         <div class="col-sm-2"></div>
                    </div>
                    </form>
                </div>
            </div>  
          
            <div class="col-sm-4"></div>
           
          
        </div> 
        
       
    </body>
</html>

