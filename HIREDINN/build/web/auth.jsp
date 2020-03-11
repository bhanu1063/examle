<%-- 
    Document   : auth
    Created on : Mar 11, 2020, 4:58:50 PM
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
         <%
            if (request.getParameter("emp").equals("emp"))
            {
            RequestDispatcher rd = request.getRequestDispatcher("authe.jsp");
            rd.forward(request, response);
            }
            else
             {
            RequestDispatcher rd = request.getRequestDispatcher("authj.jsp");
            rd.forward(request, response);
            }
            
         %>
    </body>
</html>
