<%-- 
    Document   : Ad_test
    Created on : 25 Dec, 2023, 1:42:13 PM
    Author     : om
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add test Page</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <%@include file="Admin_header.jsp"%>
        <style>
            body {

                background-image: url(image/test.jpeg);
                background-size: cover;
                
            }
        </style>
    </head>
    <body >
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="container">   
                    <form action=" Ad_test" method="post">
                        <h1>Tests</h1>
                        <br>
                        <div class="row">
                            <div class="col-sm-12">
                                 <select  name="txt_pname" style="width: 320px;height: 35px" placeholder="Pateint Name"  class="form-control" required="">
                                   
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
                            <div class="col-sm-6">
                                <input type="text" name="txt_pcontact"  onkeypress="javascript: return isNumber(event)"placeholder="Contact" class="form-control" maxlength="10" minlength="10" required="">
                            </div>
                            <div class="col-sm-6">
                                <input type="text" name="txt_page"  onkeypress="javascript: return isNumber(event)"  placeholder="Age" class="form-control" required="">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-6">
                                <textarea class="form-control" name="txt_paddress" placeholder="Address" required=""></textarea>
                            </div>
                            <div class="col-sm-6">
                                <textarea placeholder="Result"  name="txt_result"class="form-control" required=""></textarea>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-2"></div> 
                            <div class="col-sm-8">
                                <input type="Submit" name="btnsubmit" value="Add" class="btn btn-info" style="margine-left:50px; width:70px">
                                <input type="reset" name="btnsubmit" value="Cancel" class="btn btn-danger" style="margine-left:50px">
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
