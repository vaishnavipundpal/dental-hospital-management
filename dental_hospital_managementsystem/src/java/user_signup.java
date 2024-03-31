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
public class user_signup extends HttpServlet {

   
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out=resp.getWriter();
      String usignname=req.getParameter("txt_usignname");
      String usignaddress=req.getParameter("txt_usignaddress");
      String usigngender=req.getParameter("txt_usigngender");
      String usigndob=req.getParameter("txt_usigndob");
      String usignemail=req.getParameter("txt_usignemail");
      String usignpassword=req.getParameter("txt_usignpassword");
     String event=req.getParameter("btnsubmit");
     
       out.println(usignname);
        out.println(usignaddress);
        out.println(usigngender);
        out.println(usigndob);
        out.println(usignemail);
          out.println(usignpassword);
        
        
          
           database db=new database();
        String result=db.connectDB();
        out.println(result);
         
         Connection cn=null;
    Statement st=null;


          if (event.equals("Signup"))
           {
       
               String insert=db.Query("insert into user_signup_tbl(uname,address,gender,udob,email,upassword)values('"+usignname+"','"+usignaddress+"','"+usigngender+"','"+usigndob+"','"+usignemail+"','"+usignpassword+"')","Record Inserted");
               out.println(insert);
                 resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='userlogin.jsp';");
            out.println("</script>");
          }
            if(event.equals("Login"))
   {
    try
    {
       Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dental_hospital","root","ROOT");
       st=cn.createStatement();
        String email;
        String upassword;
       String sql="select * from user_signup_tbl where uname='"+usignname+"' and address='"+usignaddress+"' and gender='"+usigngender+"' and udob='"+usigndob+"' and email='"+usignemail+"' and upassword='"+usignpassword+"'";
        ResultSet rs=st.executeQuery(sql);
        if(rs.next())
        {
        resp.sendRedirect("userlogin.jsp");
        }
        else
        {
        resp.sendRedirect("user_signup.jsp");
        }
    }catch(Exception ex)
    {
      out.println(ex.toString());
    }
   }
          
        
        
    }



}
