/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author om
 */
public class userpayment extends HttpServlet {
    
       @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
       String chkpayment=req.getParameter("chkpayment");
       String cardnumber=req.getParameter("txt_credit");
       String cvv=req.getParameter("txt_cvv");
       String expirydate=req.getParameter("txt_expirydate");
       String camount=req.getParameter("txt_amount");
       
       String upiid=req.getParameter("txt_upiid");
       String gamount=req.getParameter("txt_uamount");
       
        String event=req.getParameter("btnsubmit");
       
       out.println(cardnumber);
       out.println(cvv);
       out.println(expirydate);
       out.println(camount);
       
       out.println(upiid);
       out.println(gamount);
       
       
       
        database db=new database();
        String result=db.connectDB();
        out.println(result);
        
       
           if(event.equals("Proceed to checkout"))
        {
            
            if(chkpayment.equals("Credit Card"))
            {
            String insert=db.Query("insert into user_paymentmethod1_tbl(patcard_no,patCVV,card_exp_date,amount)values('"+cardnumber+"','"+cvv+"','"+expirydate+"','"+camount+"')","Record Inserted");
            out.println(insert);
             resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='user_treatmentlist.jsp';");
            out.println("</script>");
            }
            else
            {
                 String insert=db.Query("insert into user_paymentmethod2_tbl(UPI_id,amount)values('"+upiid+"','"+gamount+"')","Record Inserted");
                out.println(insert);
                  resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='user_treatmentlist.jsp';");
            out.println("</script>");
                
            }
            
            
        }

        
    }

    

}
    
    


