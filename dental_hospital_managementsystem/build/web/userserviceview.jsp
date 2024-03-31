<%-- 
    Document   : userserviceview
    Created on : 10 Feb, 2024, 9:24:39 PM
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

                margin: 3px;
                background-color: whitesmoke;
                padding:5px;
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
           String sql="select * from admin_addserice_tbl";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
           {
          
    

      %>
            <div class="event">
                <form action="useradd_appoinment.jsp" method="post">
                <div class="row">
                    <div class="col-sm-12">
                        <img src="<%=rs.getString("serimage")%>" height="150" width="150">
                        <p>Service Name:<%=rs.getString("sername")%></p>
                        <p style="width: 450px;max-width: 200px">Duration:
                            <%=rs.getString("serinformation")%></p>
                        
                         <p> Charges:<%=rs.getString("serchar")%></p>
                         
                        <input type="hidden" name="dname" value="<%=request.getParameter("dname")%>">
                         <input type="hidden" name="sname" value="<%=rs.getString("sername")%>">
                         <input type="hidden" name="serchar" value="<%=rs.getString("serchar")%>">
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

