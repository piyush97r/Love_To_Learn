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
        <link rel="icon" type="image/png" href="images/fav.png" />
        <jsp:include page="common.jsp"/>
        <link rel="stylesheet" href="Askquestion.css">
    </head>
    <body>
        <%
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            ResultSet rs1 = null;
            ResultSet rs2 = null;
            String Title;
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                String Id = request.getParameter("Id");
                String sql = "Select Title,Question,Display_Name,Question_Date from Questions q,Users u where u.User_Id=q.User_Id And Question_Id=" + Id;
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                rs.next();
                session.setAttribute("Question_Id", Id);
        %>
        <br />
    <center><h1 style="color:goldenrod;  text-decoration: underline"><%= rs.getString(1)%></h1></center>
    <br />
    <center><h2 style="position: relative; left: 50px; font-size: 20px; max-width: 1000px"><%= rs.getString(2)%></h2></center>
    <h6 style="position: relative; left: 1000px">By : <%=rs.getString(3)%></h6>
    <h6 style="position: relative; left: 1000px">On : <%=rs.getString(4)%></h6>
    <br />
    <%
        sql = "Select Comment,Display_Name from Qcomments q, Users u where q.User_Id = u.user_Id And Question_Id = " + Id;
        pst = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE,
                ResultSet.CONCUR_UPDATABLE);
        rs2 = pst.executeQuery();
        if (rs2.next()) {
    %>
    <h6 style="position: relative; left: 1000px">Comments</h6>
    <%
        do {
    %>
    <h6 style="position: relative; left: 900px"><%= rs2.getString(1)%></h6>
    <h6 style="position: relative; left: 1200px">By : <%= rs2.getString(2)%></h6>
    <%
            } while (rs2.next());
        }
    %>
    <form method="POST" action="Qcomments.jsp">
        <textarea rows="1" cols="25" name="Comment" placeholder="Comment?" style="max-width : 500px; position: relative; left : 800px" required="required"></textarea>
        <div class="vue-wrapper">
            <div id="vue">
                <button type="Submit" style="position : relative; left : 850px">Comment</button>
            </div>
        </div>
    </form>
    <br />
    <br />
    <br />
    <%
        sql = "Select answer,Display_Name,Answer_Time from Answers a,Users u where a.User_Id=u.User_Id And a.Question_id=" + Id;
        pst = con.prepareStatement(sql);
        rs1 = pst.executeQuery();
        if(rs1.next()){
      %>
    <h2 style="position: relative; color: goldenrod; left :170px; text-decoration: underline">Answers Given..</h2>
    <%
        do {
    %>  

    <div class="vue-wrapper">
        <div id="vue">
            <div class="question">
                <div class="votes">
                    <div class="upvote"></div>
                    <div class="number-of-votes">0</div>
                    <div class="downvote"></div>
                </div>
                <div class="question-and-answer">
                    <h2 style="font-size: 18px"><%= rs1.getString(1)%></h2>
                    <h6 style="position: relative; left: 800px">By : <%= rs1.getString(2)%></h6>
                    <h6 style="position: relative; left: 800px">On : <%= rs1.getString(3)%></h6>
                </div>
            </div>
        </div>
    </div>
    <%
        } while (rs1.next());
}   else {
    %>
    <div class="vue-wrapper">
        <div id="vue">
            <div class="question" >
                <h3>No Answers were given For This question</h3>
            </div>
        </div>
    </div>
    <%
}
    } catch (SQLException e) {
    }
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
                        <textarea v-model="searchString" type="text" placeholder="Answer Here." rows="15" cols="120" name="Answer" required="required"></textarea>
                    </div>
                </div>
                <center><button type="submit">Answer</button></center>
            </div>
        </div>
    </form>
</body>
</html>
