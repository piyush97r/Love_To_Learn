<!DOCTYPE html>

<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Done Intrests</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Excessintrest.css" />

    </head>
    <body>
        <%
            String Id = session.getAttribute("userId").toString();
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                String sql = "Select * from Intrest where User_Id=" + Id;
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                rs.next();
                String res;
                int i = 2;
                for (i = 2; i <= 7; i++) {
                    res = rs.getString(i);
                    if (res.equals("None")) {
                        break;
                    }
                }
                if (i == 4) {
                    response.sendRedirect("lessIntrest.jsp");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>




        <main>
            <div class="blog-page">
                <div class="page-content">
                    <section class="page-body">
                        <center><h1>You have selected Your Intrests</h1>
                            <hr>
                            <h3>Choose a 'Name' for your profile.This Name would be displayed to other Users.</h3></center>
                        <div id='container'>  
                            <form method="POST" action="updatename.jsp">
                                <div class='cell'><input type='search' placeholder='User Name' name="Display_Name"></div>
                                <div class='cell'><div class='button'><input type="submit" style="border: none; background: none; cursor: pointer; font-size: 18px"></div></div>
                            </form>
                        </div>
                        <br />
                        <center><h4> You can leave it empty if You would like to use the same name given Earlier.</h4></center>


                        <h2>What now?</h2>

                        <p>Now that your SignUp Process is Complete and you have selected a name as a User Name...You can Login</p>



                        <p>GO TO:</p>

                        <ul>
                            <li><a href="index.html" style="text-decoration: none"><span>Home.</span></a></li>
                            <li><a href="login.html" style="text-decoration: none"><span>Login.</span></a></li>
                            <li><a href="question.html" style="text-decoration: none"><span>Questions.</span></a></li>
                            <li><a href="right-sidebar.html" style="text-decoration: none"><span>About Us.</span></a></li>
                        </ul>
                        <hr>

                        <h2>Admins Note</h2>

                        <p>We might Add More Intrests soon.</p>

                        <p>You can Always Change your Intrests Once you login.</p>

                        <p>Hope You Do well....Thank You.......;)</p>

                    </section>
                </div>
            </div>
        </main>
    </body>
</html>
