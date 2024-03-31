<%-- 
    Document   : useradd_appoinment
    Created on : 20 Dec, 2023, 1:40:32 PM
    Author     : om
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add appointment Page</title>
         <link rel="stylesheet" href="bootstrap.min.css">
         <%@include file="user_header.jsp"%>
         <style>
             body{
                 background-image: url("image/appo.jpg");
             }
             .container{
                 padding:15px;
              margin-top: 20px;
             }
             
         </style>
    </head>
    <body>
        <div class="row">
          <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="container">
                    <form  action="useradd_appoinment" method="post">
                        <h1><b>Appointment</b></h1>
                <br>
                       <div class="row">
                        <div class="col-sm-6">
                           
                            <input type="text" name="txt_pname" onkeypress="javascript: return isString(event)" placeholder="Patient name" value="<%=session.getAttribute("uname")%>" class="form-control" required="">
                        </div>
                         <div class="col-sm-6">
                           
                            <input type="text" name="txt_con"  onkeypress="javascript: return isNumber(event)" placeholder="Contact"  class="form-control" required="">
                        </div>
                    </div>
                       <br>
                       <div class="row">
                        <div class="col-sm-6">
                          <input type="text"  name="txt_age"onkeypress="javascript: return isNumber(event)" placeholder="Age" class="form-control" required="">
                        </div>
                            <div class="col-sm-6">
                                <textarea placeholder="Address" name="txt_paddress" class="form-control" required=""><%=session.getAttribute("address")%></textarea>
                        </div>
                    </div>
                    <br>
                      <div class="row">
                        <div class="col-sm-6">
                            <input type="text" value="<%=request.getParameter("dname")%>" name="txt_dname" placeholder="Doctor Name"  class="form-control"  required="">
                        </div>
                           <div class="col-sm-6">
                               <input type="text" name="txt_sername" value="<%=request.getParameter("sname")%>"  onkeypress="javascript: return isAlphanumric(event)" placeholder="Service Name" class="form-control" required="">
                        </div>
                    </div>
                    <br>
                     <div class="row">
                        <div class="col-sm-6">
                            <input type="date" name="txt_pdate" placeholder="date" class="form-control" required="" >
                            
                        </div>
                         <div class="col-sm-6">
                            <input type="time" name="txt_ptime" placeholder="time" class="form-control" required="">
                            
                        </div>
                         <br>
                         <br>
                         <div class="col-sm-12">
                             <input type="text" name="amount" value="<%=request.getParameter("serchar")%>"  placeholder="Service amount" class="form-control" required="">
                         </div>
                    </div>
      
          <br>
            
                 <div class="row">
                     <div class="col-sm-2"></div>
                       <div class="col-sm-8">
                           <input type="submit" name="btnsubmit" value="Add" class="btn btn-info" style="width:70px;margin-left:45px" class="form-control">
                      
                           <input type="reset" name="btnsubmit" value="Cancel" class="btn btn-danger" class="form-control">
                          </div>
                           
                          <div class="col-sm-2"></div>
            
           </div>
                    </form>
        </div> 
                
                 
                 </div>
         </div>
       
    </body>
</html>

      