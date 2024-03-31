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
import javax.servlet.http.HttpSession;

/**
 *
 * @author om
 */
public class ad_teratment extends HttpServlet {

   
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out=resp.getWriter();
      String tname=req.getParameter("txt_tname");
      String tinfo=req.getParameter("txt_tinfo");
      String timage=req.getParameter("txt_timage");
      String event=req.getParameter("btnsubmit");
    
       out.println(tname);
        out.println(tinfo);
        out.println(timage);
     
        
        
        
         
    HttpSession session=req.getSession();
         database db=new database();
        String result=db.connectDB();
        out.println(result);

         
        
         
         if(event.equals("Add"))
        {
            String insert=db.Query("insert into admin_addtreatment_tbl(tretname,tretinfo,tretimg,email)values('"+tname+"','"+tinfo+"','"+timage+"','"+session.getAttribute("email")+"')","Record Inserted");
            out.println(insert);
             resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='ad_teratment.jsp';");
            out.println("</script>");
            
        }
        
        
        
        
        
    }
    
    
}
