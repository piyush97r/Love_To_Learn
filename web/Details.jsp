<%-- 
    Document   : Details
    Created on : Nov 22, 2017, 3:15:45 PM
    Author     : Suhail.Siddiq
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details</title>
        <jsp:include page="common.jsp"/>
    </head>
    <body>
        <%
        Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            String Title;
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                String Id = request.getParameter("Id") ;
                String sql = "Select Title,Question from Questions where Question_Id="+Id;
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                rs.next();
                %>
                <h3>The Title is : <%= rs.getString(1)%></h3>
                <h4>The description of the Question is <%= rs.getString(2)%></h4>
            <%}
            catch(Exception e){
                
            }
                %>
    </body>
</html>
