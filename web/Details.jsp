<%-- 
    Document   : Details
    Created on : Nov 22, 2017, 3:15:45 PM
    Author     : Suhail.Siddiq
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details</title>
        <jsp:include page="common.jsp"/>
        <link rel="stylesheet" href="Askquestion.css">
    </head>
    <body>
        <%
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            ResultSet rs1 = null;
            String Title;
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                String Id = request.getParameter("Id");
                String sql = "Select Title,Question from Questions where Question_Id=" + Id;
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                rs.next();
                session.setAttribute("Question_Id", Id);
        %>
        <br />
    <center><h1 style="color:goldenrod;  text-decoration: underline"><%= rs.getString(1)%></h1></center>
    <br />
    <center><h4 style="position: relative; left: 50px; font-size: 20px; max-width: 1000px"><%= rs.getString(2)%></h4></center>

    <br />
    <br />
    <br />
    <%
        try {
            sql = "Select answer,User_Name,Answer_Time from Answers a,Users u where a.User_Id=u.User_Id And a.Question_id=" + Id;
            pst = con.prepareStatement(sql);
            rs1 = pst.executeQuery();
            rs1.next();
            System.out.println(rs1.getString(1));
    %>
    <h2 style="position: relative; color: goldenrod; left :170px; text-decoration: underline">The Answers Given..</h2>
    <%
        System.out.println("Its Comming Here");
        do {
    %>  

    <div class="vue-wrapper">
        <div id="vue">                
            <div class="question" >
                <div class="votes">
                    <h3><%= rs1.getString(1)%></h3>
                    <h6 style="position: relative; left: 850px">By : <%=rs1.getString(2)%></h6>
                    <h6 style="position: relative; left: 850px">On : <%=rs1.getString(3)%></h6>
                </div>
            </div>
        </div>
    </div>
    <%
        } while (rs1.next());
    } catch (SQLException e) {
    %>
    <!--    <h2>No Answers were given For This question</h2>-->
    <div class="vue-wrapper">
        <div id="vue">                
            <div class="question" >
                <div class="votes">
                    <h3>No Answers were given For This question</h3>
                </div>
            </div>
        </div>
    </div>
    <%}
    %>
    <br />
    <h4 style="position: relative; left: 170px; font-size: 30px; text-decoration: underline; color: goldenrod">Give Your Answer Here..</h4>
    <br />
    <br />
    <form method="POST" action="Answer.jsp">
        <div class="vue-wrapper">
            <div id="vue">
                <div class="search-area">
                    <div class="input-wrapper">
                        <i class="fa fa-search"></i>
                        <textarea v-model="searchString" type="text" placeholder="Answer Here." rows="15" cols="120" name="Answer" required="required"></textarea>
                    </div>
                </div>
                <center><button type="submit">Answer</button></center>
            </div>
        </div>
    </form>
    <%  } catch (Exception e) {

        }
    %>
</body>
</html>
