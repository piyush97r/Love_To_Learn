<%-- 
    Document   : Askquestion
    Created on : Nov 20, 2017, 10:29:08 AM
    Author     : Suhail.Siddiq
--%>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
        <link rel="icon" type="image/png" href="images/fav.png" />
    </head>
    <body>
        <%
            ResultSet rs = null;
            Connection con = null;
            PreparedStatement pst = null;
            String Department = request.getParameter("Department");
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                String sql = "Select * from Department where DEPT_NAME='" + Department + "'";
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                rs.next();
//        SimpleDateFormat sf = new SimpleDateFormat("dd-MM-yyyy");
//        Date abc = sf.parse("19-11-2017");
//        Date cde = new Date();
//        out.println(sf.format(abc));
//        long MILLIS_PER_DAY = 24 * 60 * 60 * 1000L;
//        boolean before = abc.getTime() - cde.getTime() > MILLIS_PER_DAY ;
//        out.println(before);
        %>
        <br />
    <center><h1>Ask Your Questions.</h1>
        <h3>It is recommended to search a for the Question first. So that you need not wait if it is Already Answered.</h3></center>
    <br />
    <br />
    <form method="POST" action="UpdateQuestion.jsp">
        <div class="vue-wrapper">
            <div id="vue">
                <div class="search-area">
                    <div class="input-wrapper">
                        <i class="fa fa-search"></i>
                        <input v-model="searchString" type="text" placeholder="Give Your Question Title Here." name="Title" required="required"/>
                    </div>

                </div>

                <div class="search-area">
                    <div class="input-wrapper">
                        <i class="fa fa-search"></i>
                        <textarea v-model="searchString" type="text" placeholder="Give Your Question Title Here." rows="15" cols="120" name="Question" required="required"></textarea>
                    </div>

                    <br />
                    <input type="hidden" value="<%= Department %>" name="Department" />
                    <div>
                        <div class="search-area">
                            <div class="input-wrapper">
                                <i class="fa fa-search"></i>
                                <select v-model="searchString" name="Domain" required="required">
                                    <option>Select The Domain Of Your Question</option>
                                    <% int i = 1;
                                        while (i <= 11) {
                                            String name = rs.getString("Domain" + i);
                                            i++;
                                            if (!name.equals("None")) {

                                    %>
                                    <option><%= name%></option>
                                    <%
                                                }
                                            }
                                        } catch (Exception e) {
                                            out.println(e);
                                        }
                                    %>
                                </select>
                            </div>

                        </div>
                    </div>
                </div>
                <center><button type="submit">Ask</button></center>
            </div>
        </div>
    </form>
</body>
</html>
