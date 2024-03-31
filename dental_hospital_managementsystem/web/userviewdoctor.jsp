<%-- 
    Document   : userviewdoctor
    Created on : 10 Feb, 2024, 9:11:38 PM
    Author     : om
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Hospital Page</title>
        <%@include file="user_header.jsp" %>
        <style>
            body{
                height:1000px;
                overflow:scroll;
            }
            .event{
                display: inline-block;
                margin: 1px;
                background-color: whitesmoke;
                padding:3px;
            }
           
        </style>
    </head>
    <body>
        <div class="container">
            <br>
            <%
          Connection cn=null;
          Statement st=null;
          
          int i=1;
           try
        {
           Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dental_hospital","root","ROOT");
           st=cn.createStatement();
           String sql="select * from admin_adddoctor_tbl ";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
           {
          
    

      %>
            <div class="event">
                <form action="userserviceview.jsp" method="post">
                <div class="row">
                    <div class="col-sm-12">
                        <img src="<%=rs.getString("docimage")%>" height="160" width="200">
                        <p>Doctor Name:<%=rs.getString("docname")%></p>
                      <!--<p>Doctor Address:<%=rs.getString("docaddress")%></p>-->
                        <p>Doctor Contact:<%=rs.getString("doccontact")%></p>
                       <p> Email:<%=rs.getString("docemail")%></p>
                       <p>Specialization:<%=rs.getString("docspl")%></p>
                       <input type="hidden" name="dname" value="<%=rs.getString("docname")%>">
                        
                       
                        <input type="submit" name="btn" value="View More" class="btn btn-primary">
                    </div>
                </div>
                  </form>
            </div>
            <%
        }
}
catch(Exception ex)
{

}
%>
        </div>
    </body>
</html>


