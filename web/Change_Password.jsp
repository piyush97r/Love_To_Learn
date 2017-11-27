<%-- 
    Document   : Change_Password
    Created on : Nov 27, 2017, 12:01:56 PM
    Author     : Suhail.Siddiq
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            String Password = request.getParameter("Password");
            String CPassword = request.getParameter("Confirm_Password");
            if (!Password.equals(CPassword)) {%>
        <script>
            alert("Passwords Donot Match");
        </script>
        <%
            throw new Exception();
            } else {
                String sql = "Update Users set Password='" + Password + "' where User_Id=" + session.getAttribute("UserId").toString();
                try {
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                    pst = con.prepareStatement(sql);
                    int x = pst.executeUpdate();
                    if (x == 1) {
                        response.sendRedirect("Settings.jsp");
                    }
                }
                catch (SQLException e){
                e.printStackTrace();
}
                catch (Exception e) {
                    response.sendRedirect("Settings.jsp");
                }
            }
        %>
    </body>
</html>
