<%-- 
    Document   : userpayment
    Created on : 7 Jan, 2024, 1:37:47 PM
    Author     : om
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>payment</title>
        <link rel="stylesheet" href="bootstrap.min.css">
         <%@include file="user_header.jsp"%>
       
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap"rel="stylesheet"/>
      <script src="https://kit.fontawesome.com/17ba7898e5.js" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="bootstrap.min.css">
      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    
        
    </head>
    <script type="text/javascript">
    $(function () {
        $("input[name='chkpayment']").click(function () {
            if ($("#chkCreditCard").is(":checked")) {
                $("#paymentdetails").show();
                $("#txt_showcredit").show();
                $("#showgpay").hide();
                
            } else {
                $("#paymentdetails").show();
                $("#showgpay").show();
                $("#txt_showcredit").hide();
                
                
            }
        });
    });
</script>
    <body>
        <style type="text/css">
        
    *{
  font-family: 'Poppins', sans-serif;
  margin:0; padding:0;
  box-sizing: border-box;
  outline: none; border:none;
  text-transform: capitalize;
  transition: all .2s linear;
}

.container{
  display: flex;
  justify-content: center;
  align-items: center;
  padding:25px;
  min-height: 100vh;
  min-width: 210vh;
  background: linear-gradient(190deg, #2ecc71 60%, #27ae60 40.1%);
  margin-top: 0px;
  margin-left: 0px;
  margin-right: 0px;
  box-shadow: none;
  border-radius: 0px;
}

.container form{
  padding:20px;
  width:700px;
  height: 450px;
  background: #fff;
  box-shadow: 0 5px 10px rgba(0,0,0,.1);
}

.container form .rowdata{
  display: flex;
  flex-wrap: wrap;
  gap:15px;
  
}

.container form .rowdata .coldata{
  flex:1 1 250px;
}

.container form .rowdata .coldata .title{
  font-size: 20px;
  color:#333;
  padding-bottom: 5px;
  text-transform: uppercase;
}

.container form .rowdata .coldata .inputBox{
  margin:15px 0;
}

.container form .rowdata .coldata .inputBox span{
  margin-bottom: 10px;
  display: block;
}

.container form .rowdata .coldata .inputBox input{
  width: 100%;
  border:1px solid #ccc;
  padding:10px 15px;
  font-size: 15px;
  text-transform: none;
}

.container form .rowdata .coldata .inputBox input:focus{
  border:1px solid #000;
}

.container form .rowdata .coldata .flex{
  display: flex;
  gap:15px;
}

.container form .rowdata .coldata .flex .inputBox{
  margin-top: 5px;
}

.container form .rowdata .coldata .inputBox img{
  height: 34px;
  margin-top: 5px;
  filter: drop-shadow(0 0 1px #000);
}

.container form .submit-btn{
  width: 100%;
  padding:12px;
  font-size: 17px;
  background: #27ae60;
  color:#fff;
  margin-top: 5px;
  cursor: pointer;
}

.container form .submit-btn:hover{
  background: #2ecc71;
}
/*
.radiobtn{
  max-width: 350px;
  width: 100%;
  margin: 20px auto;
  background: #fff;
  border-radius: 5px;
  padding: 20px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
}*/

.paymentdetails{
  max-width: 350px;
  width: 100%;
  height: 300px;
  margin: 10px auto;
  background: #ccc;
  border-radius: 5px;
  padding: 20px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
}

 label.box{
  background: #ddd;
  margin-top: 12px;
  padding: 10px 12px;
  display: flex;
  border-radius: 5px;
  border: 2px solid transparent;
  cursor: pointer;
  transition: all 0.25s ease;
}
#chkGpay:checked ~ label.chkGpay,
#chkCreditCard:checked ~ label.chkCreditCard{
  border-color: #8E49E8;
  background: #d5bbf7;
}
label.box:hover{
  background: #d5bbf7;
}
  label.box .circle{
  height: 22px;
  width: 22px;
  background: #ccc;
  border: 5px solid transparent;
  display: inline-block;
  margin-right: 15px;
  border-radius: 50%;
  transition: all 0.25s ease;
  box-shadow: inset -4px -4px 10px rgba(0, 0, 0, 0.2);
}
#chkGpay:checked ~ label.chkGpay .circle,
#chkCreditCard:checked ~ label.chkCreditCard .circle{
  border-color: #8E49E8;
  background: #fff;
}

.container .coldata .paymentdetails input[type="text"]:focus
{
    color: blue;
}

    </style>

<div class="container">
    
     <form action=" userpayment" method="post">

        <div class="rowdata">

            <div class="coldata">

                <h3 class="title">Payment</h3>
                <div class="radiobtn">
                        <label for="chkCreditCard" class="box">
                            <input type="radio" id="chkCreditCard" value="Credit Card"  name="chkpayment" checked="true" />Credit Card
                        </label>
                        <br>
                        <label for="chkGPay" class="box">
                            <input type="radio" id="chkGPay"  name="chkpayment" value="UPI(GPay,PhonePe,ApplePay)"/>UPI(GPay,PhonePe,ApplePay)
                        </label>
                        
                    </div>
            </div>

            <div class="coldata">

                <!--<h3 class="title">payment</h3>-->
                <div class="card">
                    
                    <div class="paymentdetails" id="paymentdetails" style="display: flex">
                        <div  id="txt_showcredit"  >
                        <!-- <input type="text" id="txt_name" name="txt_credit" placeholder="enter name" class="form-control" > -->
                        <br>
                        <input type="text" id="txt_cardnumber" name="txt_credit" placeholder="enter card number" class="form-control" >
                        <br>
                        <input type="text" id="txt_cvv" name="txt_cvv" placeholder="enter CVV" class="form-control" >
                        <br>
                        <input type="date"id="txt_expirydate" name="txt_expirydate" placeholder="enter expiry date" class="form-control">
                        <br>
                        <input type="text" id="txt_amount" name="txt_amount" value="<%=session.getAttribute("amount")%>" placeholder="enter amount" class="form-control" value="" >
                    </div>
                    <br>
                    
                    
                    <div  id="showgpay" style="display: none">
                        <input type="text" name="txt_upiid" placeholder="enter UPI id" class="form-control">
                    <br>
                    <input type="text" name="txt_uamount" placeholder="enter amount" value="<%=session.getAttribute("amount")%>" class="form-control" value="" 0>
                    </div>
                    </div>
                    
             </div>
            </div>
    
        </div>

        <input type="submit" name="btnsubmit" value="Proceed to checkout" class="submit-btn">

    </form>


</div>    
    
    </body>
</html>
