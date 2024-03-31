<%-- 
    Document   : user_header
    Created on : 29 Dec, 2023, 8:16:47 PM
    Author     : om
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap.min.css">
        <title>User Header Page</title>
         <script src="validation (2).js"></script>
           <style>
               span{
                   color:red;
               }
           
        .container
        {
         border-radius:20px;
         margin-top:40px;
         padding:35px;
         border:4px; 
         box-shadow: inset -5px -5px #000;
         background-color: whitesmoke;
       
         
        }
        h1{
            text-align: center;
            color:black;
            
        }
        body{
           background: linear-gradient(to top left, #ccffff 27%, #33ccff 95%);
            background-repeat: no-repeat;
            background-size:cover;
            height:800px;
            overflow: hidden;
         
          }
        </style>
    
         
    </head>
    <body>
     <nav class="navbar navbar-expand-lg" style=" background: linear-gradient(to bottom, #99ccff 0%, #99ccff 100%);
">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Dental Hospital</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="userhospitalview.jsp"> View Hospitals</a>
        </li> 
         
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="useradd_appoinment.jsp" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>See More</b></a>
   
          <ul class="dropdown-menu">
           
              
               <li><a class="dropdown-item" href="userappoinmentlist.jsp"> View Appointment</a></li>
                  <li><a class="dropdown-item" href="user_treatmentlist.jsp"> View Treatments</a></li>
                   <li><a class="dropdown-item" href="usertestlist.jsp"> View Tests</a></li>
                  
                    <li><a class="dropdown-item" href="user_priscritionlist.jsp">View Prescription</a></li>
                   
                      <li><a class="dropdown-item" href=" userpayment.jsp">Payment</a></li>
                       <li><a class="dropdown-item" href="userr_feedback.jsp">Feedback</a></li>
                    
         </ul>
        </li>
       
       
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
       <a href="index.html" class="btn btn-danger" style="color:white"> <span style="color: white">Logout</span></a>
      </form>
    </div>
  </div>
</nav>
     <!-- bootstrap 5 -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>  
      
            
      
       
        
    </body>
</html>

