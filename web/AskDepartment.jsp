<%-- 
    Document   : AskDepartment
    Created on : Nov 21, 2017, 6:31:36 AM
    Author     : Suhail.Siddiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Askquestion.css">
        <jsp:include page="common.jsp"/>
        <title>Department</title>
    </head>
    <body>
        <br />
    <center><h1 style="color: orange">Select The Department Of Your Question Here.</h1></center>
    <br />
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
                        </select>
                    </div>
                    <br />
                    <center><button>Done</button></center>
                </div>
            </div>
    </form>
</body>
</html>
