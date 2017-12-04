<%-- 
    Document   : Qcomments
    Created on : Nov 26, 2017, 4:27:30 PM
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
        <%  Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            String Comment = request.getParameter("Comment");
            String sql = "Insert into Qcomments Values(?,?,?)";
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                pst = con.prepareStatement(sql);
                pst.setString(1,session.getAttribute("Question_Id").toString());
                pst.setString(2,session.getAttribute("UserId").toString());
                pst.setString(3,Comment);
                int x = pst.executeUpdate();
                if(x==1){
                   response.sendRedirect("ProfileDisplay.jsp?Id="+session.getAttribute("Question_Id").toString()+"");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
