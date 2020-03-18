<%-- 
    Document   : index
    Created on : 11 Mar, 2020, 6:55:23 PM
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
        <form action="auth.jsp" method="post">
            <input type="text" name="username" placeholder="username">
            <br><input type ="password" name="password" placeholder="password"><br>           
            <input type="radio" name="type" value="emp">:EMPLOYEE<input type="radio" name="type" value="OWNER">:OWNER<br>
            <input type="submit">
            <br><a href="deemp.jsp">employeesignup</a><br>
            <a href="deowner.jsp">ownerSignup</a><br>
            <button formaction="clean.jsp">click clean</button>
                
            </body>

    </html>
