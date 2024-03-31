<%-- 
    Document   : ad_doctor_info
    Created on : 25 Dec, 2023, 1:38:02 PM
    Author     : om
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor info Page</title>
               <link rel="stylesheet" href="bootstrap.min.css">
         <%@include file="Admin_header.jsp"%>
         <style>
             body {
                 background-image: url("image/h.jpeg");
                
             }
         </style>
    </head>
    <body>
        <div class="row">
          <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="container">  
                    <form action=" ad_doctor_info" method="post">
                <h2>Doctor's Information</h2>
                <br>
                       <div class="row">
                        <div class="col-sm-12">
                            <input type="text" name="txt_dname" onkeypress="javascript: return isString(event)" placeholder="Doctor's name" class="form-control" required="">
                        </div>
                    </div>
                       <br>
                       <div class="row">
                        <div class="col-sm-6">
                          <input type="text" name="txt_dcontact"   onkeypress="javascript: return isNumber(event)" placeholder="Contact" class="form-control"required="">
                        </div>
                            <div class="col-sm-6">
                          <input type="email" name="txt_demail" onkeypress="javascript: return isalphanumric(event)"  placeholder="Email" class="form-control" required="">
                        </div>
                    </div>
                    <br>
                      <div class="row">
                        <div class="col-sm-6">
                            <textarea class="form-control" name="txt_address" onkeypress="javascript: return isAlphanumric(event)" placeholder="address" required=""></textarea>
                        </div>
                           <div class="col-sm-6">
                               <input type="text" name="txt_dspl" onkeypress="javascript: return isString(event)"  placeholder="Specialization" class="form-control" required="">
                        </div>
                    </div>
                    <br>
                     <div class="row">
                        <div class="col-sm-12">
                            <input type="file" name="txt_dimg"  class="form-control" required="">
                        </div>
                    
  
                </div>
            
                    <br>    
            <div class="row">
                         <div class="col-sm-2"></div> 
                        <div class="col-sm-8">
                            <input type="Submit" name="btnsubmit" value="Add" class="btn btn-info"style="margine-left:50px; width:70px">
                              <input type="reset" name="btnsubmit" value="Cancel" class="btn btn-danger"style="margine-left:50px">
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
