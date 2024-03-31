`<%-- 
    Document   : adminlogin
    Created on : 20 Dec, 2023, 6:56:14 PM
    Author     : om
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Admin Login</title>
         <link rel="stylesheet" href="bootstrap.min.css">
         <script src="validation (1).js"></script>
          
         <style>
            body{
                background-image: url("image/d.jpeg");
                 background-repeat:no-repeat;
                 background-size: cover;
                 background-attachment: fixed;
                 overflow: hidden;
            }
            .con{
                border:3px solid black;
                box-shadow:inset -4px -4px #000; 
                background-color: rgba(0,0,0,0.5);
                margin-top: 75px;
                padding:50px;
                margine-top:200px;
                border-radius: 20px;
            }
            input[type=text],[type=date],[type=submit],[type=email],[type=password],select
            {
                background-color: rgba(0,0,0,0.5);
                color:white;
                font-size: 1rem;
                box-shadow: inset -3px -3px rgba(0,0,0,0.5);
                border-radius:20px;
                outline:none;
                border: none;
                align-content: center;
                margine-left:45px;
                
            }
             input[type=text]:focus,[type=date]:focus,[type=submit]:focus,[type=email]:focus,[type=password]:focus,select:focus
            {
                background-color: rgba(0,0,0,0.5);
                color:white;
                font-size: 1rem;
                box-shadow: inset -3px -3px rgba(0,0,0,0.5);
                border-radius:20px;
                outline:none;
                border: none;
                align-content: center;
                margine-left:45px;
                
            }
            input[type=submit]{
                height:40px;
                width:100%;
            }
           .form-control::placeholder{ /* Chrome, Firefox, Opera, Safari 10.1+*/ 
                    color:white;
           /* opacity:1; Firefox*/}
           
           
        </style>

    </head>
    <body>
         <div class="row">
                <div class="col-sm-4"></div>
            
           <div class="col-sm-4">
               <div class="container con">
                   <form action="adminlogin" method="post">
               <h1 style="text-align: center;color:white;font-family: Cooper Black"><b>AdminLogin</b></h1>
               <br>
               <div class="row">
                  
                   <div class="col-sm-12">                                           
                       <input type="email" name="txt_ademail" placeholder="Enter Email" class="form-control" required="">
                   </div> 
               </div>
               <br>
               <div class="row">
               <div class="col-sm-12">                      
                      
                       <input type="password" name="txt_adpassword" placeholder="password"  class="form-control" required="">
                   </div> 
                   <br>
                   <br>
                   <br>
                    <div class="col-sm-12">                      
                      <p style="color:white"><b>Create new account? <a href="adminsignup.jsp">Signup</a> </b></p>
                       
                   </div> 
                 </div>
               <br>
               
               <div class="row">
                   <div class=col-sm-4></div>
                   <div class=col-sm-4>
                       <input type="submit" name="btnsubmit" value="Login">
                   </div>
                     <div class=col-sm-4></div>
                                  

               </div>
                   </form>
             </div>
               </div>  
                
                
                
                <div class="col-sm-4"></div>
        
        
        
        
        
        
        
   </body>
</html>
