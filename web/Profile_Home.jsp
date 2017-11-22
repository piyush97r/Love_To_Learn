<%-- 
    Document   : Profile_Home
    Created on : Nov 19, 2017, 12:22:05 PM
    Author     : Suhail.Siddiq
--%>

<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Home</title>
        <jsp:include page="common.jsp"/>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="Excessintrest.css">
        <link rel="stylesheet" href="Profile_Home.css">
    </head>
    <body>
        <%
            String Name = session.getAttribute("DisplayName").toString();
            System.out.println("The Name is" + Name);
            String Id = session.getAttribute("UserId").toString();
            System.out.println("The Id is " + Id);
        %>
        <br />
        <br />
    <center><h1>Here Are Some Recent Questions Based On Your Intrest.See If You can Answer These.</h1></center>

        <!--        This is for the questions-->



        <div class="vue-wrapper">
            <div id="vue">                
                <div class="question" >
                    <div class="votes">
                        <div class="upvote"></div>
                        <div class="number-of-votes">8</div>
                        <div class="downvote"></div>
                        Votes
                    </div>

                    <div class="question-and-answer">
                        <h4>How do i  Create a Class in Java.</h4>
                        <br />
                        <p><textarea name="Text1" cols="120" rows="5"></textarea></p>
                        <p class="">By : Someone</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
