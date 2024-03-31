/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.resource.cci.Record;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author om
 */
public class useradd_appoinment extends HttpServlet {

  
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out=resp.getWriter();
       String apid=req.getParameter("apid");
      String pname=req.getParameter("txt_pname");
      String pcontact=req.getParameter("txt_con");
     
      String page=req.getParameter("txt_age");
      String paddress=req.getParameter("txt_paddress");
       
        String dname=req.getParameter("txt_dname");
        String sername=req.getParameter("txt_sername");
       String ptime=req.getParameter("txt_ptime");
      
       String pdate=req.getParameter("txt_pdate");
       String amount=req.getParameter("amount");
  
       String event=req.getParameter("btnsubmit");
  
    HttpSession session=req.getSession();
       out.println(pname);
        out.println(pcontact);
        out.println(page);
        out.println(paddress);
         out.println(dname);
        out.println(sername);
       
        out.println(pdate);
        out.println(ptime);
        
         database db=new database();
        String result=db.connectDB();
        out.println(result);
        
       

          if(event.equals("Add"))
        {
          String appdate = null;
            String insert=db.Query("insert into user_addappointment_tbl(patname,patcontact,patage,pataddress,dname,sname,appdate,apptime,email,amount)values('"+pname+"','"+pcontact+"','"+page+"','"+paddress+"','"+dname+"','"+sername+"','"+pdate+"','"+ptime+"','"+session.getAttribute("email")+"','"+amount+"')","Record Inserted");
            out.println(insert);
            
            session.setAttribute("amount", amount);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='userpayment.jsp';");
            out.println("</script>");
            
        }
            if(event.equals("Update"))
        {
            String update=db.Query("update  user_addappointment_tbl set patname='"+pname+"',patcontact='"+pcontact+"',patage='"+page+"',pataddress='"+paddress+"',dname='"+dname+"',sname='"+sername+"',appdate='"+pdate+"',apptime='"+ptime+"' where id='"+apid+"'", "Record Updated");
            out.println(update);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+update+"');");
            out.println("location='appoinmentlist.jsp';");
            out.println("</script>");
            
        }
        
        
           
          if(event.equals("Delete"))
        {
            String delete=db.Query("delete from user_addappointment_tbl where id='"+apid+"'", "Record Deleted");
            out.println(delete);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+delete+"');");
            out.println("location='appoinmentlist.jsp';");
            out.println("</script>");
            
        }
        
    }


}
