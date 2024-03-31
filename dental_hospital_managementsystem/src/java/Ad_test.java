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
public class Ad_test extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out=resp.getWriter();
      String pname=req.getParameter("txt_pname");
      String pcontact=req.getParameter("txt_pcontact");
      String page=req.getParameter("txt_page");
      String paddress=req.getParameter("txt_paddress");
      String presult=req.getParameter("txt_result");
     String event=req.getParameter("btnsubmit");
      
       out.println(pname);
        out.println(pcontact);
        out.println(page);
        out.println(paddress);
        out.println(presult);
        
        
      
        
        
         database db=new database();
        String result=db.connectDB();
        out.println(result);

        if(event.equals("Add"))
        {
            String insert=db.Query("insert into admin_addtest_tbl(patname,patcontact,pataddress,patage,testresult)values('"+pname+"','"+pcontact+"','"+paddress+"','"+page+"','"+presult+"')","Record Inserted");
            out.println(insert);
             resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='Ad_test.jsp';");
            out.println("</script>");
            
        }
        

        
    }

    

}
