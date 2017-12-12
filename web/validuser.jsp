<%-- 
    Document   : validuser
    Created on : Dec 7, 2017, 4:07:40 PM
    Author     : Suhail.Siddiq
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String Login_Name = request.getParameter("Id");
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            try {
                System.out.println(Login_Name);
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                String sql = "Select User_Id,Display_Name from Users where User_Name=?";
                System.out.println("Wrote");
                pst = con.prepareStatement(sql);
                pst.setString(1, Login_Name);
                rs = pst.executeQuery();
                System.out.println("Executed");
                if (rs.next()) {
                    response.getWriter().write("OK");
                } else {
                    response.getWriter().write("N");
                }
            }
                catch(Exception e) {
//                response.getWriter().write("N");
                out.println(e);
                }
        %>
    </body>
</html>
