<%-- 
    Document   : Askquestion
    Created on : Nov 20, 2017, 10:29:08 AM
    Author     : Suhail.Siddiq
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="common.jsp"/>
        <link rel="stylesheet" href="Askquestion.css">
        <link rel="stylesheet" href="Excessintrest.css" >
        <title>Ask Question.</title>
    </head>
    <body>
        <%
            ResultSet rs= null;
            Connection con = null;
            PreparedStatement pst = null;
            String Department = request.getParameter("Department");
        %>
        <br />
    <center><h1>Ask Your Questions.</h1>
        <h3>It is recommended to search a for the Question first. So that you need not wait if it is Already Answered.</h3></center>
    <br />
    <br />
    <div class="vue-wrapper">
        <div id="vue">
            <div class="search-area">
                <div class="input-wrapper">
                    <i class="fa fa-search"></i>
                    <input v-model="searchString" type="text" placeholder="Give Your Question Title Here."/>
                </div>

            </div>

            <div class="search-area">
                <div class="input-wrapper">
                    <i class="fa fa-search"></i>
                    <textarea v-model="searchString" type="text" placeholder="Give Your Question Title Here." rows="15" cols="120"></textarea>
                </div>

                <br />

                <div>
                    <div class="search-area">
                        <div class="input-wrapper">
                            <i class="fa fa-search"></i>
                            <select v-model="searchString">
                                <option>Select The Domain Of Your Question</option>
                                <option>Java</option>
                                <option>Kotlin</option>
                                <option>Python</option>
                                <option>Css</option>
                                <option>Html</option>
                                <option>C++</option>
                            </select>
                        </div>

                    </div>
                </div>

            </div>
            <center><button>Ask</button></center>
        </div>
    </div>
</body>
</html>
