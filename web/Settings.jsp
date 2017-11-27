<%-- 
    Document   : Settings
    Created on : Nov 24, 2017, 2:12:17 PM
    Author     : Suhail.Siddiq
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Settings.</title>
        <jsp:include page="common.jsp"/>
        <style>
            /*========*/
            .form-wrapper {
                background-color: #f6f6f6;
                background-image: -webkit-gradient(linear, left top, left bottom, from(#f6f6f6), to(#eae8e8));
                background-image: -webkit-linear-gradient(top, #f6f6f6, #eae8e8);
                background-image: -moz-linear-gradient(top, #f6f6f6, #eae8e8);
                background-image: -ms-linear-gradient(top, #f6f6f6, #eae8e8);
                background-image: -o-linear-gradient(top, #f6f6f6, #eae8e8);
                background-image: linear-gradient(top, #f6f6f6, #eae8e8);
                border-color: #dedede #bababa #aaa #bababa;
                border-style: solid;
                border-width: 1px;
                -webkit-border-radius: 10px;
                -moz-border-radius: 10px;
                border-radius: 10px;
                -webkit-box-shadow: 0 3px 3px rgba(255,255,255,.1), 0 3px 0 #bbb, 0 4px 0 #aaa, 0 5px 5px #444;
                -moz-box-shadow: 0 3px 3px rgba(255,255,255,.1), 0 3px 0 #bbb, 0 4px 0 #aaa, 0 5px 5px #444;
                box-shadow: 0 3px 3px rgba(255,255,255,.1), 0 3px 0 #bbb, 0 4px 0 #aaa, 0 5px 5px #444;
                margin: 100px auto;
                overflow: hidden;
                padding: 8px;
                width: 450px;
            }

            .form-wrapper #search {
                border: 1px solid #CCC;
                -webkit-box-shadow: 0 1px 1px #ddd inset, 0 1px 0 #FFF;
                -moz-box-shadow: 0 1px 1px #ddd inset, 0 1px 0 #FFF;
                box-shadow: 0 1px 1px #ddd inset, 0 1px 0 #FFF;
                -webkit-border-radius: 3px;
                -moz-border-radius: 3px;
                border-radius: 3px;
                color: #999;
                float: left;
                font: 16px Lucida Sans, Trebuchet MS, Tahoma, sans-serif;
                height: 20px;
                padding: 10px;
                width: 320px;
            }

            .form-wrapper #search:focus {
                border-color: #aaa;
                -webkit-box-shadow: 0 1px 1px #bbb inset;
                -moz-box-shadow: 0 1px 1px #bbb inset;
                box-shadow: 0 1px 1px #bbb inset;
                outline: 0;
            }

            .form-wrapper #search:-moz-placeholder,
            .form-wrapper #search:-ms-input-placeholder,
            .form-wrapper #search::-webkit-input-placeholder {
                color: #999;
                font-weight: normal;
            }

            .form-wrapper #submit {
                background-color: #0483a0;
                background-image: -webkit-gradient(linear, left top, left bottom, from(#31b2c3), to(#0483a0));
                background-image: -webkit-linear-gradient(top, #31b2c3, #0483a0);
                background-image: -moz-linear-gradient(top, #31b2c3, #0483a0);
                background-image: -ms-linear-gradient(top, #31b2c3, #0483a0);
                background-image: -o-linear-gradient(top, #31b2c3, #0483a0);
                background-image: linear-gradient(top, #31b2c3, #0483a0);
                border: 1px solid #00748f;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                -webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.3) inset, 0 1px 0 #FFF;
                -moz-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.3) inset, 0 1px 0 #FFF;
                box-shadow: 0 1px 0 rgba(255, 255, 255, 0.3) inset, 0 1px 0 #FFF;
                color: #fafafa;
                cursor: pointer;
                height: 42px;
                float: right;
                font: 15px Arial, Helvetica;
                padding: 0;
                text-transform: uppercase;
                text-shadow: 0 1px 0 rgba(0, 0 ,0, .3);
                width: 100px;
            }

            .form-wrapper #submit:hover,
            .form-wrapper #submit:focus {
                background-color: #31b2c3;
                background-image: -webkit-gradient(linear, left top, left bottom, from(#0483a0), to(#31b2c3));
                background-image: -webkit-linear-gradient(top, #0483a0, #31b2c3);
                background-image: -moz-linear-gradient(top, #0483a0, #31b2c3);
                background-image: -ms-linear-gradient(top, #0483a0, #31b2c3);
                background-image: -o-linear-gradient(top, #0483a0, #31b2c3);
                background-image: linear-gradient(top, #0483a0, #31b2c3);
            }

            .form-wrapper #submit:active {
                -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
                -moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
                box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
                outline: 0;
            }

            .form-wrapper #submit::-moz-focus-inner {
                border: 0;
            }
        </style>
    </head>
    <body>
        
        
        <%
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            String Name = request.getParameter("Name");
            String sql = "Select * from Users where User_Id = "+session.getAttribute("UserId").toString();
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                rs.next();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        
        
        
        
        
        <br />
    <center><h1>You can change your Profile settings Here.....!</h1></center>
    <br />
    <center>

        <h1 style="position: relative; right: 400px">Change Your Email</h1>
        <form class="form-wrapper" style="position: relative; right: 400px; bottom: 90px" method="POST" action="Change_Email.jsp">
            <input type="text" id="search" placeholder="New_Email" name="New_Email" required>
            <input type="submit" value="Change" id="submit">
            <br />
            <h4>Existing Email : <%= rs.getString("Email") %></h4>
        </form>

        <h1 style="position: relative; left: 350px; bottom: 325px">Change The Display Name</h1>
        <form class="form-wrapper" style="position: relative; left: 350px; bottom: 420px" method="POST" action="Change_Name.jsp">
            <input type="text" id="search" placeholder="New_Name" name="New_Name" required>
            <input type="submit" value="Change" id="submit">
            <br />
            <h4>Existing Name : <%= rs.getString("Display_Name") %></h4>
        </form>
        
        
        <form class="form-wrapper" style="position: relative; bottom: 400px" method="POST" action="Change_Password.jsp">
            <h1>Change Your Password?</h1>
            <input type="password" id="search" placeholder="New_Password" required style="position: relative; left : 50px" name="Password">
        
        <h1>Confirm Password</h1>
        
            <input type="password" id="search" placeholder="Confirm_Password" required name="Confirm_Password">
            <input type="submit" value="Change" id="submit">
        </form>
        
</body>
</html>
