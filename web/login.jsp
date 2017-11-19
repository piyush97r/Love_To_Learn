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
            boolean flag=false;
            try{
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn","Mohammed_Numan","mohammed");
                String sql = "Select User_Id,Display_Name from Users where User_Name='"+Login_Name+"' and Password='"+Password+"'";
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                rs.next();
                String DName = rs.getString("Display_Name");
                if(rs != null){
                    session.removeAttribute("User_Id");
                    session.setAttribute("UserId",rs.getString("User_Id"));
                    session.setAttribute("DisplayName",DName);
                    response.sendRedirect("Profile_Home.jsp");
                }
            }
            catch(SQLException e)
            {
                response.sendRedirect("LoginFail.jsp");
            }
            %>
    </body>
    
</html>
