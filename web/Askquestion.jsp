<%-- 
    Document   : Askquestion
    Created on : Nov 20, 2017, 10:29:08 AM
    Author     : Suhail.Siddiq
--%>

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
                <button>Reset</button>
            </div>

            <div class="search-area">
                <div class="input-wrapper">
                    <i class="fa fa-search"></i>
                    <textarea v-model="searchString" type="text" placeholder="Give Your Question Title Here." rows="15" cols="120"></textarea>
                </div>
                <div>
                    
                </div>
                <center><button>Ask</button></center>
            </div>
        </div>
    </div>
</body>
</html>
