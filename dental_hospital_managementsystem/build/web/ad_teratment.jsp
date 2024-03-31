<%-- 
    Document   : ad_teratment
    Created on : 25 Dec, 2023, 2:14:01 PM
    Author     : om
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add treatment Page</title>
         <link rel="stylesheet" href="bootstrap.min.css">
         <%@include file="Admin_header.jsp"%>
         <style>
             body{
                    background-image: url("image/medicine2.jpg");
             }
         </style>
    </head>
    <body>
            <div class="row">
                <div class="col-sm-4"></div>
            
           <div class="col-sm-4">
               <div class="container con">
                   <form action="ad_teratment" method="post">
               <h1 style="text-align: center;color:black"><b>Treatments</b></h1>
               <br>
               <div class="row">
                   <div class="col-sm-12">                      
                      <select  name="txt_tname" style="width:  320px; height: 35px" placeholder="Pateint Name"  class="form-control" required="">
                                   
                                    <option> Select Name</option>
                                    <option>Vaishnavi Pundpal</option>
                                    <option>Mayuri Bellad</option>
                                     <option>Tanuja Patil</option>
                                      <option>Omkar Jagatap</option>
                       </select>
                      
                   </div> 
               </div>
              
               <br>
               <div class="row">
               <div class="col-sm-12">                      
                      
                   <textarea placeholder="treatment  Name and info" name="txt_tinfo"  onkeypress="javascript: return isalphanumric(event)" class="form-control" required=""></textarea>
                   </div> 
                 </div>
               <br>
                <div class="row">
                   <div class="col-sm-12">                      
                      
                       <input type="file" name="txt_timage"  onkeypress="javascript: return isString(event)" class="form-control" required="">
                   </div> 
               </div>
               <br>
               <div class="row">
                   <div class=col-sm-2></div>
                   <div class=col-sm-8>
                       <input type="submit" name="btnsubmit" value="Add" class="btn btn-info" style="width:70px">
                         <input type="reset" name="btnsubmit" value="Cancel" class="btn btn-danger">
                   </div>
                   
                     <div class=col-sm-2></div>
                                  

               </div>
                   </form>
             </div>
               </div>  
                
                
            </div> 
                <div class="col-sm-4"></div>
        
    
   </body>
</html>
