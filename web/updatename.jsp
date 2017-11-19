<%-- 
    Document   : updatename
    Created on : Nov 18, 2017, 3:02:15 PM
    Author     : Suhail.Siddiq
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Name Updating</title>
    </head>
    <body>
        <%
            String Id = session.getAttribute("userId").toString();
            String Display_Name = request.getParameter("Display_Name");
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            try{
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn","Mohammed_Numan","mohammed");
                String sql = "Update Users set Display_Name='"+Display_Name+"' where User_Id="+Id;
                pst = con.prepareStatement(sql);
                int x = pst.executeUpdate();
                if(x==1){
                    response.sendRedirect("ExcessIntrest.jsp");
                }
            }catch(Exception e){
                e.printStackTrace();
            }
                
       %>
       
    </body>
</html>
