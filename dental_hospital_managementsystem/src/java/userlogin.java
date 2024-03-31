/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author om
 */
public class userlogin extends HttpServlet {


      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out=resp.getWriter();
      String usemail=req.getParameter("txt_usemail");
     
     
      String uspassword=req.getParameter("txt_uspassword");
     String event=req.getParameter("btnsubmit");
       out.println(usemail);
        out.println(uspassword);
        
      
         database db=new database();
        String result=db.connectDB();
        out.println(result);

        
        
         Connection cn=null;
       Statement st=null;
       
          HttpSession session=req.getSession();
    
     if(event.equals("Login"))
       {
       
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dental_hospital","root","ROOT");
               st=cn.createStatement();
               String sql="select * from user_signup_tbl where email='"+usemail+"' and upassword='"+uspassword+"'";
               ResultSet rs=st.executeQuery(sql);
               if(rs.next())
               {
                   session.setAttribute("email", usemail);
                    session.setAttribute("uname", rs.getString("uname"));
                     session.setAttribute("address", rs.getString("address"));
                      
                   
                   resp.sendRedirect("userhospitalview.jsp");
               }
               else
               {
                   
                   resp.sendRedirect("userlogin.jsp");
               }
           }catch(Exception ex)
           {
               out.println(ex.toString());
           }   
                
       
       
       }
       
 
    }

}