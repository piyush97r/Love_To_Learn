<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Department</title>
        <link rel="icon" type="image/png" href="images/fav.png" />
        <link rel="stylesheet" href="Askquestion.css">
        <jsp:include page="common.jsp"/>
    </head>
    <body>
        <br />
    <center><h1 style="color: orange">Select The Department Of Your Question Here.</h1></center>
    <br />
    <%
        try{
    session.getAttribute("UserId").toString();
        }catch(Exception e){
             response.sendRedirect("Pleaselogin.jsp");
        }
    %>
    <form method="POST" action="Askquestion.jsp">
        <div class="vue-wrapper">
            <div id="vue">
                <div class="search-area">
                    <div class="input-wrapper">
                        <i class="fa fa-search"></i>
                        <select v-model="searchString" name="Department">
                            <option>Select Your Department</option>
                            <option>Computer Science</option>
                            <option>Mechanical</option>
                            <option>Medical</option>
                            <option>General</option>
                            <option>Electrical</option>
                            <option>Mathematics</option>
                        </select>
                    </div>
                    <br />
                    <center><button>Done</button></center>
                </div>
            </div>
    </form>
</body>
</html>
