<%-- 
    Document   : empd
    Created on : 11 Mar, 2020, 7:00:10 PM
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
            String em = request.getParameter("email");
            String ps = request.getParameter("password");
            String st ="insert into empd values('"+us+"','"+em+"','"+ps+"')";
            boolean ss =s.execute(st);
            out.println("<form><button formaction='index.jsp'>click to login</button>");
        }
            catch(Exception e){              
            out.println("jiji"+e); 
            }
        %>
    </body>
</html>
