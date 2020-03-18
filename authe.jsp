<%-- 
    Document   : authe.jsp
    Created on : 11 Mar, 2020, 6:57:35 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%
        try {

            String connectionURL = "jdbc:mysql://localhost/bhanu"; 
            Connection con = null; 
            Class.forName("com.mysql.jdbc.Driver"); 
            
            con = DriverManager.getConnection(connectionURL, "root","");
                        
            Statement s = con.createStatement();
            String us = request.getParameter("username");
            String ps = request.getParameter("password");
            String st = "select * from empd where name='"+us+"' and pass='"+ps+"'"; 
           ResultSet rs = s.executeQuery(st);
            if (rs.next())
            {
                out.println(rs.getString("name"));
            }
            else
            {
                out.println("user not registerd");
            }
        }
            catch(Exception e){
            out.println("jiji"+e); 
            }
        %>
    </body>
</html>
