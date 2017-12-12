<!DOCTYPE html>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Login Success</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="login.css">
    </head>
    <body>
        <%
            String Login_Name = request.getParameter("Login_Name");
            String Password = request.getParameter("Password");
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            try {
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                    String sql = "Select User_Id,Display_Name from Users where User_Name = ? and Password='" + Password + "'";
                    pst = con.prepareStatement(sql);
                    pst.setString(1,Login_Name);
                    System.out.println(pst);
                    rs = pst.executeQuery();
                    if (rs.next()) {
                        session.removeAttribute("User_Id");
                        String DName = rs.getString("Display_Name");
                        session.setAttribute("UserId", rs.getString("User_Id"));
                        session.setAttribute("DisplayName", DName);
                        response.sendRedirect("Profile_Home.jsp");
                    }
                    else{
                        response.sendRedirect("LoginFail.jsp");
                    }
            } catch (Exception e) {
//                response.sendRedirect("LoginFail.jsp");
                    out.println(e);
                  e.printStackTrace();
            }
        %>
    </body>
</html>