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
 * @author 
 */
public class userr_feedback extends HttpServlet {

  
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out=resp.getWriter();
       String fid=req.getParameter("fid");
      String username=req.getParameter("txt_username");     
      String usercon=req.getParameter("txt_usercon");
       String userfeedback=req.getParameter("txt_feedback");
     String event=req.getParameter("btnsubmit");
      
       
       out.println(username);
        out.println(usercon);
         out.println(userfeedback);
         
         
         
          database db=new database();
        String result=db.connectDB();
        out.println(result);

                
         if(event.equals("Add"))
        {
            String insert=db.Query("insert into user_feedback_tbl(patname,pat_contact,pat_feedback)values('"+username+"','"+usercon+"','"+userfeedback+"')","Record Inserted");
            out.println(insert);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='userr_feedback.jsp';");
            out.println("</script>");
            
        }
           if(event.equals("Update"))
        {
            String update=db.Query("update  user_feedback_tbl  set   patname='"+username+"',pat_contact='"+usercon+"',pat_feedback='"+userfeedback+"'", "Record Updated");
            out.println(update);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+update+"');");
            out.println("location='feedbacklist.jsp';");
            out.println("</script>");
            
        }
        
           
          if(event.equals("Delete"))
        {
            String delete=db.Query("delete from user_feedback_tbl where id='"+fid+"'", "Record Deleted");
            out.println(delete);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+delete+"');");
            out.println("location='feedbacklist.jsp';");
            out.println("</script>");
            
        }
        
        
    }

}
