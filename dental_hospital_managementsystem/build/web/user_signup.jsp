<%-- 
    Document   : user_signup
    Created on : 29 Dec, 2023, 8:06:53 PM
    Author     : om
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User signup Page</title>
         <title>Admin signup Page</title>
        <link rel="stylesheet" href="bootstrap.min.css">
          
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
                margin-top: 30px;
                padding:30px;
                
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
                   <form action="user_signup" method="post">
               <h1 style="text-align: center;color:white;font-family: Cooper Black"><b>User Signup </b></h1>
               <br>
               
               <div class="row">
                   <div class="col-sm-12">                      
                      
                       <input type="text" name="txt_usignname" placeholder="Enter name"   class="form-control" required="">
                   </div>                   
                 </div>
               <br>
              
                <div class="row">
                   <div class="col-sm-12">                      
                      
                       <input type="text" name="txt_usignaddress" placeholder="Enter Address"  class="form-control" required="">
                   </div>                   
                 </div>
               <br>
               
              
                <div class="row">
                    <div class="col-sm-6">
                         <select class="sign_gender" name="txt_usigngender" style="width: 150px;height: 35px" required="">
                                   
                                    <option> Select Gender</option>
                                    <option>Male</option>
                                    <option>Female</option>
                                </select>
                      
                            </div>
                  <div class="col-sm-6">
                         <input type="date" name="txt_usigndob" placeholder="DOB" class="form-control" required="">
                  </div> 
                     </div>
               
               <br>
                 <div class="row">
                   <div class="col-sm-6">                      
                      
                       <input type="email" name="txt_usignemail" placeholder="Enter Email"  class="form-control" required="">
                   </div> 
                      <div class="col-sm-6">                      
                      
                       <input type="password" name="txt_usignpassword" placeholder="password"  class="form-control" required="">
                   </div> 
                     <br>
                     <br>
                       <div class="col-sm-12">                      
                      <p style="color:white"><b>Already have an account ? <a href="userlogin.jsp">Login</a> </b></p>
                        
                   </div> 

                 </div>
               <br>
               
               <div class="row">
                   <div class=col-sm-4></div>
                   <div class=col-sm-4>
                       <input type="submit" name="btnsubmit" value="Signup">
                   </div>
                     <div class=col-sm-4></div>
               </div> 
                
               
                   </form>
       </div>
               </div>  
                
                
                
                <div class="col-sm-4"></div>
  
    </body>
</html>

