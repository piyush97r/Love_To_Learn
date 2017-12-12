<%-- 
    Document   : Accept
    Created on : Dec 4, 2017, 7:39:03 PM
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
                String Qid = session.getAttribute("Question_Id").toString();
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                sql = "Select Accepted_Answer from Questions where Question_Id = " + Qid;
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                rs.next(); 
                Integer a = Integer.parseInt(rs.getString(1));
                if (a!=0) {
                    response.getWriter().write("N");
                }else {
                        Integer id = Integer.parseInt(Id);
                        sql = "Update Questions set Accepted_Answer = "+id+" where Question_Id = "+Qid ;
                        pst = con.prepareStatement(sql);
                        int x = pst.executeUpdate();
                    }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
