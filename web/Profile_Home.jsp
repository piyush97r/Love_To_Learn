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
        <link rel="icon" type="image/png" href="images/fav.png" />
        <jsp:include page="common.jsp"/>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="Excessintrest.css">
        <link rel="stylesheet" href="Profile_Home.css">
    </head>
    <body>
        <%
            try {
                String Name = session.getAttribute("DisplayName").toString();
                String Id = session.getAttribute("UserId").toString();
        %>
        <br />
        <br />
    <center><h1>Here Are Some Recent Questions Based On Your Intrest.See If You can Answer These.</h1></center>
        <%
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            String Title;
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
            String sql = "Select Title,Question_Id from Questions Order by Question_Date";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();

        %>
        <%while (rs.next()) {
                Title = rs.getString(1);
                String id = rs.getString(2);
        %>
    <div class="vue-wrapper">
        <div id="vue">                
            <div class="question" >
                <div class="votes">
                    <a href = "Details.jsp?Id=<%= id%>" style="text-decoration: none; font-size: 15px"><%= Title%></a>  
                </div>
            </div>
        </div>
    </div>
    <%
            }
        } catch (NullPointerException e) {
            response.sendRedirect("Pleaselogin.jsp");
        } catch (Exception e) {
            System.out.println(e);
        }
    %>


</body>
</html>
