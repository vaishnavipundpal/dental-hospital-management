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

/**
 *
 * @author om
 */
public class adminlogin extends HttpServlet {

   
   
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out=resp.getWriter();
      String ademail=req.getParameter("txt_ademail");
     
     
      String adpassword=req.getParameter("txt_adpassword");
      
      String event=req.getParameter("btnsubmit");
    
       out.println(ademail);
        out.println(adpassword);
        
        
        
        
        
         database db=new database();
        String result=db.connectDB();
        out.println(result);
        
        
        
         Connection cn=null;
    Statement st=null;
    
    
   if(event.equals("Login"))
   {
    try
    {
       Class.forName("com.mysql.jdbc.Driver");
       cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dental_hospital","root","ROOT");
       st=cn.createStatement();
       String sql="select * from admin_signup_tbl where email='"+ademail+"' and apassword='"+adpassword+"'";
        ResultSet rs=st.executeQuery(sql);
        if(rs.next())
        {
        resp.sendRedirect("addhospinfo.jsp");
        }
        else
        {
        resp.sendRedirect("adminlogin.jsp");
        }
    }catch(Exception ex)
    {
      out.println(ex.toString());
    }
   }
        
        
        

    }
    
    
}
