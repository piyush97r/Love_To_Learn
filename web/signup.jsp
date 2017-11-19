<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signing In.....</title>
        <link rel="stylesheet" href="intrest.css" />
    </head>
    <body>
        <script type="text/javascript">
            function fun() {
                alert("The password and Confirm Password Donot Match");
            }
        </script>
        <!-- Checking if The UserName is Valid-->

        <%  Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            String Name = request.getParameter("Name");
            String sql = "Select User_Name from Users";
            boolean stop = false;
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                while (rs.next()) {
                    if (Name.equals(rs.getString(1))) {
                        stop = true;
                        response.sendRedirect("SameUsername.jsp");
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>

        <!--This is Just The Insertion of Data into The Database-->    
        <%
            if (!stop) {
                con = null;
                pst = null;
                rs = null;
                try {
                    Name = request.getParameter("Name");
                    String Age = request.getParameter("Age");
                    String Gender = request.getParameter("Gender");
                    String Occupation = request.getParameter("Occupation");
                    String Password = request.getParameter("Password");
                    String Email = request.getParameter("Email");
                    String cPassword = request.getParameter("Confirm_Password");
                    //String Dn = "None";
                    boolean flag = false;

                    if (!Password.equals(cPassword)) {
        %>
        <script type="text/javascript">
            fun();
        </script>
        <%
                        flag = true;
                    }

                    if (flag) {
                        response.sendRedirect("signup.html");
                    } else {

                        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                        sql = "Select MAX(USER_ID) from Users";
                        pst = con.prepareStatement(sql);
                        rs = pst.executeQuery();
                        rs.next();
                        String id = rs.getString(1);
                        if (id == null) {
                            id = "10000";
                        }
                        Integer a = Integer.parseInt(id);
                        a++;
                        sql = "INSERT INTO Users VALUES(?,?,?,?,?,?,?,?)";
                        pst = con.prepareStatement(sql);
                        pst.setInt(1, a);
                        pst.setString(2, Name);
                        pst.setString(3, Age);
                        pst.setString(4, Gender);
                        pst.setString(5, Occupation);
                        pst.setString(6, Password);
                        pst.setString(7, Email);
                        pst.setString(8, Name);
                        int x = pst.executeUpdate();
                        sql = "Insert into Intrest(USER_ID) values(?)";
                        pst = con.prepareStatement(sql);
                        pst.setInt(1, a);
                        x = pst.executeUpdate();
                        session.setAttribute("userId", a);
                        session.setAttribute("userName", Name);
                        response.sendRedirect("intrest.jsp");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                                }
                            }%>
    </body>
</html>