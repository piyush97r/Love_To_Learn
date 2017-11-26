<%-- 
    Document   : insert
    Created on : Nov 18, 2017, 7:57:57 AM
    Author     : Suhail.Siddiq
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Updating The Database</title>
    </head>
    <body>
        <%
            String Intrest = request.getParameter("Intrest");
            Integer Id = Integer.parseInt(session.getAttribute("userId").toString());
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
//                String sql = "Select * from Intrest where User_Id=" + Id;
//                pst = con.prepareStatement(sql);
//                rs = pst.executeQuery();
//                rs.next();
//                String res;
//                boolean flag = false;
//                for (int i = 2; i <= 7; i++) {
//                    res = rs.getString(i);
//                    if (res.equals("None")) {
//                        sql = "Update INTREST set Intrest" + (i - 1) + "='" + Intrest + "' where USER_ID=" + Id;
//                        pst = con.prepareStatement(sql);
//                        int x = pst.executeUpdate();
//                        if (x == 1) {
//                            flag = true;
//                            break;
//                        }
//                    }
//                }
//                if (flag) {
//                    response.sendRedirect("intrest.jsp");
//                } else {
//                    response.sendRedirect("ExcessIntrest.jsp");
//                }


                  String sql = "Insert into Intrests(User_Id, Intrest) values(?, ?)";
                  pst = con.prepareStatement(sql);
                  pst.setInt(1,Id);
                  pst.setString(2,Intrest);
                  int x = pst.executeUpdate();
                  if(x == 1) {
                      response.sendRedirect("intrest.jsp");
                  }

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
