<%-- 
    Document   : ViewUsers
    Created on : Nov 20, 2017, 3:32:15 PM
    Author     : Suhail.Siddiq
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Users.</title>
        <jsp:include page="common.jsp"/>
    </head>
    <body>
        <br />
    <center><h1 style="color: orange">Users Based on Their Overall Ranks</h1></center>
    <br/>
    <table border="2px solid black"   width="100%" style="text-align: center">
        <thead style="font-family: italics;color: white;font-size: 25px;background-color: lightblue">
        <th>User_Id</th>
        <th>Name</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Occupation</th>
        <th>Email</th>
    </thead>
    <tbody>
        <%
            ResultSet rs = null;
            Connection con = null;
            PreparedStatement pst = null;
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                String sql = "Select User_Id, Display_Name, User_Age, Gender, Occupation, Email from Users";
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                while (rs.next()) {
        %>
        <tr>
            <td> <%= rs.getString("User_Id")%></td>
            <td> <%= rs.getString("Display_Name")%></td>
            <td> <%= rs.getString("User_Age")%></td>
            <td> <%= rs.getString("Gender")%></td>
            <td> <%= rs.getString("Occupation")%></td>
            <td> <%= rs.getString("Email")%></td>
        </tr> 
        <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
    </tbody>
</table>
</body>
</html>
