<%-- 
    Document   : Change_Name
    Created on : Nov 27, 2017, 11:53:05 AM
    Author     : Suhail.Siddiq
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Name</title>
    </head>
    <body>
        <%
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            String Name = request.getParameter("New_Name");
            String sql = "Update Users set Display_Name='"+Name+"' where User_Id="+session.getAttribute("UserId").toString();
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                pst = con.prepareStatement(sql);
                int x = pst.executeUpdate() ;
                if(x==1){
                    response.sendRedirect("Settings.jsp");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
