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
public class adpriscription extends HttpServlet {

  
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out=resp.getWriter();
      String pname=req.getParameter("txt_pname");      
      String page=req.getParameter("txt_page");
      String pcontact=req.getParameter("txt_pcontact");
     
      String date=req.getParameter("txt_date");
       String primg=req.getParameter("txt_primg");
       String event=req.getParameter("btn_submit");
    
       out.println(pname);
        out.println(page);
        out.println(pcontact);
        out.println(primg);
        out.println(date);
          
        
         database db=new database();
        String result=db.connectDB();
        out.println(result);

       
        
         if(event.equals("Add"))
        {
            String insert=db.Query("insert into admin_addprescription_tbl(patname,patcontact,patage,predate,primg)values('"+pname+"','"+pcontact+"','"+page+"','"+date+"','dental_image/"+primg+"')","Record Inserted");
            out.println(insert);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='adpriscription.jsp';");
            out.println("</script>");
            
        }

        
    }


}
