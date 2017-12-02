<%-- 
    Document   : removeAttribute
    Created on : Dec 2, 2017, 5:34:24 AM
    Author     : Suhail.Siddiq
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Attribute..!</title>
    </head>
    <body>
        <%
            try {
                session.removeAttribute("UserId");
                response.sendRedirect("index.html");
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
