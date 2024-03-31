<%-- 
    Document   : addhospinfo
    Created on : 25 Dec, 2023, 1:17:05 PM
    Author     : om
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>hospital info Page</title>
         <link rel="stylesheet" href="bootstrap.min.css">
         <%@include file="Admin_header.jsp"%>
         <script src="validation (1).js"></script>
         <style>
             body{
                 background-image: url("image/hos.jpg");
                 background-size: cover;
                 height: 90px;
             }
             .container{
                 padding:20px;
                 height:420px;
             }
             .h2{
                 text-align: center;
             }
            
         </style>
    </head>
    <body>
        <div class="row">
          <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="container">   
                    <form action="addhospinfo" method="post">
                        <h2><b>Hospital Information</b></h2>
                <br>
                       <div class="row">
                         <div class="col-sm-12">
                            <input type="text" name="txt_hname" onkeypress="javascript: return isString(event)" placeholder="Hospital name" class="form-control">
                        </div>
                    </div>
                       <br>
                       <div class="row">
                        <div class="col-sm-6">
                            <input type="text" name="txt_hcontact"  onkeypress="javascript: return  isNumber(event)" maxlength="10" minlength="10"placeholder="Contact" class="form-control">
                        </div>
                            <div class="col-sm-6">
                          <input type="email" name="txt_hemail"  onkeypress="javascript: return isalphanumric(event)"  placeholder="Email" class="form-control">
                    </div>
                    </div>
                    <br>
                      <div class="row">
                        <div class="col-sm-6">
                            <textarea placeholder="Address" name="txt_haddress" class="form-control"></textarea>
                        </div>
                           <div class="col-sm-6">
                               <input type="text" name="txt_howner" onkeypress="javascript: return  isAlphanumric(event)" placeholder="Owner" class="form-control">
                        </div>
                    </div>
                    <br>
                     <div class="row">
                        <div class="col-sm-12">
                            <input type="file" name="txt_himage" placeholder="Hospital image" class="form-control">
                            
                        </div>
                    </div>
                   
                           
           
          <br>
            <div class="row">
                         <div class="col-sm-2"></div> 
                        <div class="col-sm-8">
                            <input type="Submit" name="btnsubmit" value="Add" class="btn btn-info" style="width:70px">
                            <input type="reset" name="btnsubmit" value="Cancel" class="btn btn-danger" >
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
