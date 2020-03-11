<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            if (request.getParameter("type").equals("emp"))
            {
                out.print("employee");
            RequestDispatcher rd = request.getRequestDispatcher("authe.jsp");
            rd.forward(request, response);
            }
            else
             {
            RequestDispatcher rd = request.getRequestDispatcher("autho.jsp");
            rd.forward(request, response);
            }
            
         %>
    </body>
</html>