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
        <link rel="stylesheet" href="Profile_Home.css" />
        <script type="text/javascript" src="min.js"></script>
        <script type="text/javascript" src="Profile_Home.js"></script>
    </head>
    <body>
        <%
            String Name = session.getAttribute("DisplayName").toString();
            System.out.println("The Name is"+Name);
            String Id = session.getAttribute("UserId").toString();
            System.out.println("The Id is "+Id);
        %>
	<div class="mobile-wrap">
	<div class="mobile clearfix">
		<div class="header">
			<span class="ion-ios-navicon pull-left"><i></i></span>
			<span class="title">Home</span>
			</div>
		</div>
		<div class="sidebar">
			<div class="sidebar-overlay"></div>
			<div class="sidebar-content">
				<div class="top-head">
					<div class="name"><%= Name%></div>
					<div class="email">Your User Id <%= Id%></div>
				</div>
				<div class="nav-left">
					<a href="#home"><i class="fa fa-home"></i> Home</a>
					<a href="#alarm"><i class="fa fa-newspaper-o"></i> News</a>
					<a href="#chats"><i class="fa fa-weixin"></i> Chats</a>
					<a href="#profile"><i class="fa fa-user"></i> Profile</a>
					<a href="#settings"><i class="fa fa-cog"></i> Settings</a>
					<a href="#credits"><i class="fa fa-credit-card"></i> Credits</a>
				</div>
			</div>
		</div>
</div>
</body>
</html>
