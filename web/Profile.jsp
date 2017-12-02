<%-- 
    Document   : Profile
    Created on : Nov 20, 2017, 3:33:05 PM
    Author     : Suhail.Siddiq
--%>
<%@page import = "java.sql.*"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Profile</title>
        <link rel="icon" type="image/png" href="images/fav.png" />
        <jsp:include page="common.jsp"/>
        <link rel="stylesheet" href="Profile_Home.css">
    </head>
    <body>
        <%
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            String Title;
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                String sql = "Select Title,Question_Id from Questions where User_Id=" + session.getAttribute("UserId").toString();
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();

        %>
        <br />
    <center><h1 style="color:orange">You can track The Questions You Asked Here.</h1></center>
    <% while (rs.next()) {
                            Title = rs.getString(1);
                            String id = rs.getString(2);
                    %>
    <div class="vue-wrapper">
        <div id="vue">                
            <div class="question" >
                <div class="votes">
                     <a href = "Details.jsp?Id=<%= id%>" style="text-decoration: none"><%= Title%></a>          
                </div>
            </div>
        </div>
    </div>
    <%
                        }%>
    <%
        } 
catch (NullPointerException e){
    response.sendRedirect("Pleaselogin.jsp");
}
catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
