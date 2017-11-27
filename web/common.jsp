
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="min.js"></script>
        <script src="common.js"></script>
        <style>
            * { 
                margin: 0;
                padding: 0;
                border: 0;
                vertical-align: baseline; 
                /* outline: 1px dotted salmon; */
            }
            body {
                background-color: #EFEFEF;
                font: 100%/1.375 "helvetica neue", helvetica, tahoma, sans-serif;
            }
            .nav-wrap {
                overflow: auto;
                margin: 0 auto;
                padding-top: 2em;
                background-color: #252625;
                border-bottom: 0.25em solid #038680;
            }

            #fancy-nav { 
                float: right;
                position: relative; 
                width: 50%;
            }

            #fancy-nav li { 
                list-style: none;
                float: left;
            }

            #fancy-nav li a { 
                position: relative; 
                z-index: 200; 
                color: #bbb; 
                font-size: 0.8em; 
                display: block; 
                float: left; 
                text-decoration: none;
                text-transform: uppercase; 
                padding: 0.6em 1em 0.3em;
            }

            #fancy-nav li a:hover { 
                color: white; 
            }

            #fancy-nav #magic-line-two { 
                position: absolute; 
                top: 0; 
                left: 0; 
                width: 100px; 
                /* background: #900;  */
                background-color: #038680;
                z-index: 100; 
                -moz-border-radius-topleft:  5px;
                -moz-border-radius-topright:  5px;
                -webkit-border-top-left-radius: 5px;
                -webkit-border-top-right-radius: 5px;
                border-radius: 5px 5px 0 0;
            }

            .current_page_item_two a { 
                color: white !important; 
            }

            .ie6 #fancy-nav li, .ie7 #fancy-nav li {
                display: inline;
            }

            @media only screen and (max-width: 800px) {
                #fancy-nav { 
                    width: 98%;
                }
            }
        </style>
    </head>
    <body>
        <div class="nav-wrap">   
            <ul class="group" id="fancy-nav">
<!--                <li style="position: fixed; top: 25px; left: 20px; color: orange"><b> UserName : <%= session.getAttribute("DisplayName")%></b></li>-->
                <li class="current_page_item_two"><a href="Profile_Home.jsp">Home</a></li>
                <li><a href="AskDepartment.jsp">Ask Questions</a></li>
                <li><a href="Profile.jsp">Profile</a></li>
                <li><a href="ViewUsers.jsp">View Users</a></li>
                <li><a href="Settings.jsp">Settings</a></li>
                <li><a href="index.html">LogOut</a></li>
            </ul> 
        </div>
    </body>
</html>

