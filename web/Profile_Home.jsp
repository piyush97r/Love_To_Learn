<%-- 
    Document   : Profile_Home
    Created on : Nov 19, 2017, 12:22:05 PM
    Author     : Suhail.Siddiq
--%>

<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Home</title>
        <jsp:include page="common.html"/>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="Excessintrest.css">
    </head>
    <body>
        <%
            String Name = session.getAttribute("DisplayName").toString();
            System.out.println("The Name is" + Name);
            String Id = session.getAttribute("UserId").toString();
            System.out.println("The Id is " + Id);
        %>
        <h1>Hello World</h1>
</body>
</html>
