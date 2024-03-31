<%-- 
    Document   : adservice
    Created on : 24 Dec, 2023, 9:00:02 PM
    Author     : om
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin adsevice Page</title>
       <link rel="stylesheet" href="bootstrap.min.css">
        <%@include file="Admin_header.jsp"%>
        <style>
             body{
                 background-image: url("image/service.jpg");
             }
             input[type=submit]
             {
                 margin-left: 15px;
             }
             .container{
                 margin-top:50px;
             }
        </style>
          
    </head>
    <body>
         <div class="row">
                <div class="col-sm-4"></div>
        
           <div class="col-sm-4">
               <div class="container">
                   <form action="adservice" method="post">
               <h1><b>Add service</b></h1>
               <br>              
               <div class="row">
                   <div class="col-sm-12">                      
                      
                       <input type="text" name="txt_sername" onkeypress="javascript: return  isString(event)" placeholder="Service name" class="form-control" required="">
                   </div>                   
                 </div>
               <br>  
                
               <div class="row">
                    <div class="col-sm-4">
                        <input type="file" name="txt_image" class=form-control" required="">
                            </div>
                
                    </div>
               <br>
                <div class="row">
                   <div class="col-sm-12">                      
                      
                       <input type="text" class="form-control" name="txt_serinfo" placeholder="Service Duration ">
                   </div>                   
                 </div>
               <br>
                <div class="row">
                   <div class="col-sm-12">                      
                      
                       <input type="text" name="txt_sercharg" onkeypress="javascript: return  isalphanumric(event)" placeholder="Service Charges"  class="form-control" required="">
                   </div>                   
                 </div>
               <br>
              
                 <div class="row">
                     <div class="col-sm-2"></div>
                       <div class="col-sm-8">
                           <input type="submit" name="btn_submit" value="Add" class="btn btn-info" style="width:70px">
                           
                            <input type="reset" name="btn_submit" value="Cancel" class="btn btn-danger">
                       </div>
                            <div class="col-sm-2">
                       </div>
                        
                       
                 </div>
                        <div class="col-sm-4">
                            
                            </div>
                   </form>
                    </div>
             
                
                     </div>
   </div>
             
          
    </body>
</html>
