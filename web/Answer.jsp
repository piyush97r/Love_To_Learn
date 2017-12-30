<%-- 
    Document   : Answer
    Created on : Nov 23, 2017, 5:37:46 PM
    Author     : Suhail.Siddiq
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            try {
                System.out.println("Here Also Answer.jsp");
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                String sql;
                sql = "Select MAX(Answer_ID) from Answers";
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                rs.next();
                System.out.println("Came here In Answer.jsp");
                String id = rs.getString(1);
                if (id == null) {
                    id = "0";
                }
                Integer a = Integer.parseInt(id);
                a++;
                System.out.println("It came Here Numan....!");
                sql = "Insert into Answers Values(?,?,?,?,?)";
                pst = con.prepareStatement(sql);
                pst.setInt(1, a);
                pst.setInt(2,Integer.parseInt(session.getAttribute("Question_Id").toString()));
                pst.setInt(3,Integer.parseInt(session.getAttribute("UserId").toString()));
                pst.setString(4,request.getParameter("Answer"));
                pst.setTimestamp(5, new Timestamp(System.currentTimeMillis()));
                int x = pst.executeUpdate();
                
                if(x == 1){
                    response.sendRedirect("Details.jsp?Id="+session.getAttribute("Question_Id").toString());
                }
                else{
                    response.getWriter().write("Not Done");
                }
            }
            catch(Exception e){
                System.out.println(e);
            }
        %>
    </body>
</html>
