<%-- 
    Document   : userr_feedback
    Created on : 5 Jan, 2024, 10:09:14 PM
    Author     : om
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User feedback page</title>
     <link rel="stylesheet" href="bootstrap.min.css">
       <%@include file="user_header.jsp"%>
          
       <style>
           body{
               background-size: cover;
               background: linear-gradient(to top left, #ccffff 27%, #33ccff 95%);
               height:800px;
           }
           
           </style>
    </head>
    <body>
        <div class="row">           
             <div class="col-sm-4"></div>
             <div class="col-sm-4">
                 <div class="container">
                     <form action="userr_feedback" method="post">
                    <h1><b>Feedback</b></h1>
                     <br>
                     <div class="row">
                         <div class="col-sm-12">
                             <input type="text" name="txt_username" placeholder="Enter name" class="form-control" required="">
                         </div>
                     </div>
                     <br>
                  <div class="row">
                         <div class="col-sm-12">
                             <input type="text" name="txt_usercon" placeholder="Enter contact no" class="form-control" required="">
                         </div>
                     </div>
                     <br>
                       <div class="row">
                         <div class="col-sm-12">
                             <textarea placeholder="Feedback" name="txt_feedback"class="form-control" required=""></textarea>
                         </div>
                     </div>
                     <br>
                          <div class="row">
                              <div class="col-sm-2"></div>
                         <div class="col-sm-8">
                             <input type="submit" name="btnsubmit" value="Add"  class="btn btn-info"     class="form-control" style="width:70px;margin-left:35px">
                              <input type="reset" name="btnsubmit" value="Cancle"  class="btn btn-danger"     class="form-control">
                         </div>
                              <div class="col-sm-2"></div>
                     </div>
                     <br>

                 
                 
                     </form>  
                 
                 
                 
                 
                 </div>
               
             </div>
               <div class="col-sm-4"></div>
        </div>
        
        
        
        
        
        
        
        
        
        
        
        
        
    </body>