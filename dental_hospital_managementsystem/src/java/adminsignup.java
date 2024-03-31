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
public class adminsignup extends HttpServlet {

   
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out=resp.getWriter();
      String signname=req.getParameter("txt_signname");
      String signaddress=req.getParameter("txt_signaddress");
      String signgender=req.getParameter("txt_signgender");
      String signdob=req.getParameter("txt_signdob");
      String signemail=req.getParameter("txt_signemail");
      String signpassword=req.getParameter("txt_signpassword");
     String event=req.getParameter("btnsubmit");
    
       out.println(signname);
        out.println(signaddress);
        out.println(signgender);
        out.println(signdob);
        out.println(signemail);
          out.println(signpassword);
        
         database db=new database();
        String result=db.connectDB();
        out.println(result);

           if (event.equals("Signup"))
           {
       
               String insert=db.Query("insert into admin_signup_tbl(aname,address,agender,adob,email,apassword)values('"+signname+"','"+signaddress+"','"+signgender+"','"+signdob+"','"+signemail+"','"+signpassword+"')","Record Inserted");
               out.println(insert);
                 resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='adminlogin.jsp';");
            out.println("</script>");
            
          }
        
        
    }


}



