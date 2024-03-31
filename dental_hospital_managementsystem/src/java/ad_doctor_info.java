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

public class ad_doctor_info extends HttpServlet {

   
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out=resp.getWriter();
      String did=req.getParameter("did");
      String dname=req.getParameter("txt_dname");
      String daddress=req.getParameter("txt_address");
      String dcontact=req.getParameter("txt_dcontact");
      String demail=req.getParameter("txt_demail");
      String dspl=req.getParameter("txt_dspl");     
      String dimg=req.getParameter("txt_dimg");
      String event=req.getParameter("btnsubmit");
      
    
       out.println(dname);
        out.println(daddress);
        out.println(dcontact);
        out.println(demail);
        out.println(dspl);
       
          out.println(dimg);
        
        
          
           database db=new database();
        String result=db.connectDB();
        out.println(result);

     
        
         if(event.equals("Add"))
        {
            String insert=db.Query("insert into admin_adddoctor_tbl(docname,docaddress,doccontact,docemail,docspl,docimage)values('"+dname+"','"+daddress+"','"+dcontact+"','"+demail+"','"+dspl+"','dental_image/"+dimg+"')","Record Inserted");
            out.println(insert);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='ad_doctor_info.jsp';");
            out.println("</script>");
            
        }
              if(event.equals("Update"))
        {
            String update=db.Query("update  admin_adddoctor_tbl set docname='"+dname+"',docaddress='"+daddress+"',doccontact='"+dcontact+"',docemail='"+demail+"',docspl='"+dspl+"',docimage='"+dimg+"'", "Record Updated");
            out.println(update);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+update+"');");
            out.println("location='doctorlist.jsp';");
            out.println("</script>");
            
        }
        
   
          if(event.equals("Delete"))
        {
            String delete=db.Query("delete from admin_adddoctor_tbl where doctorid='"+did+"'", "Record Deleted");
            out.println(delete);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+delete+"');");
            out.println("location='doctorlist.jsp';");
            out.println("</script>");
            
        }
       
        
        
        
          
    }


}
