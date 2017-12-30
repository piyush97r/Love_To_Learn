<%-- 
    Document   : vote
    Created on : Dec 3, 2017, 6:22:50 PM
    Author     : Suhail.Siddiq
--%>
<%@page import = "java.sql.*" %>
<%@page import = "java.io.PrintWriter" %>
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
            String Id = request.getParameter("Id");
            String sql;
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                sql = "Select * from Answers where User_Id = " + session.getAttribute("UserId").toString() + " And Answer_Id = " + Id;
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                if (rs.next()) {
                    response.getWriter().write("S");
                } else {
                    sql = "Select * from Votes where Voter_Id=" + session.getAttribute("UserId").toString() + "and Answer_Id = " + Id;
                    pst = con.prepareStatement(sql);
                    rs = pst.executeQuery();
                    if (rs.next()) {
                        response.setContentType("text/plain");
                        response.getWriter().write("Not Allowed");
                    } else {
                        Integer id = Integer.parseInt(Id);
                        sql = "Insert into votes values(?,?,?,?)";
                        pst = con.prepareStatement(sql);
                        pst.setInt(1, id);
                        pst.setInt(2, Integer.parseInt(session.getAttribute("UserId").toString()));
                        pst.setInt(3, 1);
                        pst.setString(4,session.getAttribute("Domain").toString());
                        int x = pst.executeUpdate();
      
                    }
                }
            } catch (NullPointerException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
