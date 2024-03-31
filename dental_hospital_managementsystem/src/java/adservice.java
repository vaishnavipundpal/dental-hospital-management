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
public class adservice extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
         String srid=req.getParameter("srid");
        String sername=req.getParameter("txt_sername");
         String serimage=req.getParameter("txt_image");
        String serinfo=req.getParameter("txt_serinfo");
         String sercharg=req.getParameter("txt_sercharg");
        String event=req.getParameter("btn_submit");
        
        out.println(sername);
         out.println(serimage);
        out.println(serinfo);
         out.println(sercharg);
       
        
        
         database db=new database();
        String result=db.connectDB();
        out.println(result);

         if(event.equals("Add"))
        {
            String insert=db.Query("insert into admin_addserice_tbl(sername,serimage,serinformation,serchar)values('"+sername+"','dental_image/"+serimage+"','"+serinfo+"','"+sercharg+"')","Record Inserted");
            out.println(insert);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='adservice.jsp';");
            out.println("</script>");
            
        }
          if(event.equals("Update"))
        {
            String update=db.Query("update  admin_addserice_tbl set sername='"+sername+"',serimage='"+serimage+"',serinformation='"+serinfo+"'", "Record Updated");
            out.println(update);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+update+"');");
            out.println("location='servicelist.jsp';");
            out.println("</script>");
            
        }
        
            if(event.equals("Delete"))
        {
            String delete=db.Query("delete from admin_addserice_tbl where serid='"+srid+"'", "Record Deleted");
            out.println(delete);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+delete+"');");
            out.println("location='servicelist.jsp';");
            out.println("</script>");
            
        }
        
        
        
        
    }


}
