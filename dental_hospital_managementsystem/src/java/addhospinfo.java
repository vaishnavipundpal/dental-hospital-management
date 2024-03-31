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
public class addhospinfo extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out=resp.getWriter();
      String hid=req.getParameter("hid");
      String hname=req.getParameter("txt_hname");
       String haddress=req.getParameter("txt_haddress");
      String hcontact=req.getParameter("txt_hcontact");
      String himage=req.getParameter("txt_himage");

      String hemail=req.getParameter("txt_hemail");
      String howner=req.getParameter("txt_howner");
      
       String event=req.getParameter("btnsubmit");
    
       out.println(hname);
        out.println(haddress);
        out.println(hcontact);
         out.println(himage);
          
        out.println(hemail);
        out.println(howner);
       
         
          
          
          
          
           database db=new database();
        String result=db.connectDB();
        out.println(result);

         
         if(event.equals("Add"))
        {
            String insert=db.Query("insert into admin_addhospinfo_tbl(hname,address,contact,image,email,ownername)values('"+hname+"','"+haddress+"','"+hcontact+"','dental_image/"+himage+"','"+hemail+"','"+howner+"')","Record Inserted");
            out.println(insert);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='addhospinfo.jsp';");
            out.println("</script>");
            
        }
         
           if(event.equals("Update"))
        {
            String update=db.Query("update  admin_addhospinfo_tbl set hname='"+hname+"',address='"+haddress+"',contact='"+hcontact+"',image='"+himage+"',email='"+hemail+"',ownername='"+howner+"'", "Record Updated");
            out.println(update);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+update+"');");
            out.println("location='hospital_list.jsp';");
            out.println("</script>");
            
        }
           
         
          if(event.equals("Delete"))
        {
            String delete=db.Query("delete from admin_addhospinfo_tbl where hospitalid='"+hid+"'", "Record Deleted");
            out.println(delete);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+delete+"');");
            out.println("location='hospital_list.jsp';");
            out.println("</script>");
            
        }
        
        
        
        
}
}