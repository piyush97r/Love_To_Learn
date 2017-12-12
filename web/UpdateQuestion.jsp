<%-- 
    Document   : UpdateQuestion
    Created on : Nov 22, 2017, 2:22:59 PM
    Author     : Suhail.Siddiq
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Udating......</title>
    </head>
    <body>
        <%
            PreparedStatement pst = null;
            Connection con = null;
            ResultSet rs = null;
            String Department = request.getParameter("Department");
            String Title = request.getParameter("Title");
            String Question = request.getParameter("Question");
            String Domain = request.getParameter("Domain");
            String User = session.getAttribute("UserId").toString();
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                String sql = "Select MAX(Question_ID) from Questions";
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                rs.next();
                String id = rs.getString(1);
                if (id == null) {
                    id = "1";
                }
                Integer a = Integer.parseInt(id);
                a++;
                sql = "Insert into Questions values(?,?,?,?,?,?,?,?)";
                pst = con.prepareStatement(sql);
                pst.setInt(1, a);
                pst.setString(2, Title);
                pst.setString(3, Question);
                pst.setString(4, Department);
                pst.setString(5, Domain);
                pst.setString(6, User);
                pst.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
                pst.setString(8,"0");
                int x = pst.executeUpdate();
                if(x == 1){
                    response.sendRedirect("Profile.jsp");
                }
                else{
                    out.println("Data Not Inserted");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %> 
    </body>
</html>
