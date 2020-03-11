<%-- 
    Document   : empd
    Created on : Mar 11, 2020, 5:40:47 PM
    Author     : itadmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
        <%
            try {

            String connectionURL = "jdbc:mysql://localhost/rohith"; 
            Connection con = null; 
            Class.forName("com.mysql.jdbc.Driver"); 
            
            con = DriverManager.getConnection(connectionURL, "root","");
                        
            Statement s = con.createStatement();
            String us = request.getParameter("username");
            String em = request.getParameter("email");
            String ps = request.getParameter("password");
            String st ="insert into empd values('"+us+"','"+em+"','"+ps+"')";
            
            String stt="select * from empd";
            boolean ss =s.execute(st);
            ResultSet rs = s.executeQuery(stt);
            while(rs.next()){
                out.println("username="+rs.getString("name"));
            }                
            }
            catch(Exception e){
            out.println("jiji"+e); 
            }
        %>
    </body>
</html>
