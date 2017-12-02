
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Intrests</title>
        <link rel="icon" type="image/png" href="images/fav.png" />
        <link rel="stylesheet" href="intrest.css" />
    </head>
    <body>
        <!-- Here The Instrests Start-->
        <%
            String Names = session.getAttribute("userName").toString();
        %>
        <div class="container">
            <div class="row">
                <div class="col twelve" style="text-align: center">	
                    <h1><b>Hello</b></h1>
                    <h1>Fields You Might Be Intrested In <%= Names%></h1>
                </div>
                <div>
                    <h2>.  Pick Atleast THREE....</h2>
                </div>
            </div>

            <div class="row">
                <h3 style="text-align: center">Department : Computer Science</h3>
                <form method="POST" action="insert.jsp">
                    <div class="col three">				
                        <input type="Submit" class="btn btn-sunflower" value="C" name="Intrest">
                    </div></form>

                <form method="POST" action="insert.jsp">
                    <div class="col three">
                        <input type="Submit" class="btn btn-dark-blue" value="C++" name="Intrest">		
                    </div></form>

                <form method="POST" action="insert.jsp">
                    <div class="col three">
                        <input type="Submit" class="btn btn-rouge" value="Java" name="Intrest">			
                    </div>
                </form>

                <form method="POST" action="insert.jsp">
                    <div class="col three">
                        <input type="Submit" class="btn btn-dark" value="Java Script" name="Intrest">		
                    </div>
                </form>
            </div>

            <div class="row">
                <form method="POST" action="insert.jsp">
                    <div class="col three">			
                        <input name="Intrest" type="submit" value="Python" class="btn btn-orange">
                    </div>
                </form>

                <form method="POST" action="insert.jsp">
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Kotlin" class="btn btn-sea">
                    </div>
                </form>

                <form method="POST" action="insert.jsp">
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Coffee Script" class="btn btn-red">
                    </div>
                </form>    

                <form method="POST" action="insert.jsp">
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Django Framework!" class="btn btn-concrete">
                    </div>
                </form>
            </div>
            <div class="row">
                <form method="POST" action="insert.jsp">
                    <div class="col three">				
                        <input name="Intrest" type="submit" value="Scala"  class="btn btn-sunflower">
                    </div>
                </form>

                <form method="POST" action="insert.jsp">
                    <div class="col three">
                        <input name="Intrest" type="submit" value="R" class="btn btn-dark-blue">
                    </div>
                </form>

                <form method="POST" action="insert.jsp">    
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Matlab" class="btn btn-rouge">
                    </div>
                </form>

                <form method="POST" action="insert.jsp">
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Html" class="btn btn-dark">
                    </div>
                </form>

            </div>
            <div class="row">
                <form method="POST" action="insert.jsp">
                    <div class="col three">			
                        <input name="Intrest" type="submit" value="CSS" class="btn btn-orange">
                    </div>
                </form>

                <form method="POST" action="insert.jsp">    
                    <div class="col three">
                        <input name="Intrest" type="submit" value="JSP" class="btn btn-sea">
                    </div>
                </form>

                <form method="POST" action="insert.jsp">    
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Networking" class="btn btn-red">
                    </div>
                </form>

                <form method="POST" action="insert.jsp">    
                    <div class="col three">
                        <input name="Intrest" type="submit" value="DBMS" class="btn btn-concrete">
                    </div>
                </form>
            </div>



            <div class="row">
                <div class="col twelve">			
                    <h3 style="text-align: center">Department : Medical</h3>
                </div>
            </div>

            >    
            <div class="row">
                <form method="POST" action="insert.jsp"> 
                    <div class="col four">
                        <input name="Intrest" type="submit" value="General" class="btn btn-facebook"> <i class="fa fa-facebook"></i>
                    </div>
                </form>

                <form method="POST" action="insert.jsp">
                    <div class="col four">
                        <input name="Intrest" type="submit" value="Health Advice" class="btn btn-twitter"> <i class="fa fa-twitter"></i>
                    </div>
                </form>
            </div>

            <div class="row">

                <form method="POST" action="insert.jsp">
                    <div class="col four">
                        <input name="Intrest" type="submit" value="Help" class="btn btn-google-plus"> <i class="fa fa-google-plus"></i>
                    </div>
                </form>

                <form method="POST" action="insert.jsp">    
                    <div class="col four">
                        <input name="Intrest" type="submit" value="Help" class="btn btn-linkedin"> <i class="fa fa-linkedin"></i>
                    </div>
                </form>
            </div>




            <div class="row">


                <div class="col twelve">			
                    <h3 style="text-align: center">Department : Mechanical</h3>
                </div>
            </div>
            <div class="row">
                <form method="POST" action="insert.jsp">
                    <div class="col three">			
                        <input name="Intrest" type="submit" value="Robotics" class="btn btn-orange"> <i class="fa fa-image"></i>
                    </div>
                </form>

                <form method="POST" action="insert.jsp">    
                    <div class="col three">
                        <input name="Intrest" type="submit" value="AI" class="btn btn-orange"> <i class="fa fa-pencil"></i>			
                    </div>
                </form>

                <form method="POST" action="insert.jsp">
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Automation" class="btn btn-orange"> <i class="fa fa-shopping-cart"></i>
                    </div>
                </form>

                <form method="POST" action="insert.jsp">    
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Construction" class="btn btn-orange"> <i class="fa fa-times-circle"></i>
                    </div>
                </form>

            </div>
            <div class="row">

                <form method="POST" action="insert.jsp">
                    <div class="col three">			
                        <input name="Intrest" type="submit" value="Machine Learning" class="btn btn-sea"> <i class="fa fa-image"></i>
                    </div>
                </form>


                <form method="POST" action="insert.jsp">    
                    <div class="col three">
                        <input name="Intrest" type="submit" value="AI" class="btn btn-sea"> <i class="fa fa-pencil"></i>
                    </div>
                </form>

                <form method="POST" action="insert.jsp">    
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Add" class="btn btn-sea"> <i class="fa fa-shopping-cart"></i>
                    </div>
                </form>

                <form method="POST" action="insert.jsp">    
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Sign" class="btn btn-sea"> <i class="fa fa-times-circle"></i>
                    </div>
                </form>

            </div>




            <div class="row">
                <h3 style="text-align: center">Department : General</h3>

                <form method="POST" action="insert.jsp">
                    <div class="col four">
                        <input name="Intrest" type="submit" value="Physics" class="btn btn-facebook"> <i class="fa fa-facebook"></i>
                    </div>
                </form>


                <form method="POST" action="insert.jsp">    
                    <div class="col four">
                        <input name="Intrest" type="submit" value="Chemistry" class="btn btn-twitter"> <i class="fa fa-twitter"></i>
                    </div>
                </form>
            </div>

            <div class="row">

                <form method="POST" action="insert.jsp">
                    <div class="col four">
                        <input name="Intrest" type="submit" value="Mathematics" class="btn btn-facebook"> <i class="fa fa-facebook"></i>
                    </div>
                </form>

                <form method="POST" action="insert.jsp">    
                    <div class="col four">
                        <input name="Intrest" type="submit" value="Social Science" class="btn btn-twitter"> <i class="fa fa-twitter"></i>
                    </div>
                </form>
            </div>






            <div class="row">
                <div class="col twelve">			
                    <h3 style="text-align: center">Department : Electrical and Electronics</h3>
                </div>
            </div>
            <div class="row">

                <form method="POST" action="insert.jsp">    
                    <div class="col three">			
                        <input name="Intrest" type="submit" value="Digital Electronics" class="btn btn-orange"> <i class="fa fa-image"></i>
                    </div>
                </form>


                <form method="POST" action="insert.jsp">    
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Analog Electronics" class="btn btn-orange"> <i class="fa fa-pencil"></i>
                    </div>
                </form>


                <form method="POST" action="insert.jsp">    
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Basic Electrical" class="btn btn-orange"> <i class="fa fa-shopping-cart">
                    </div>
                </form>

                <form method="POST" action="insert.jsp">    
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Ohms Law" class="btn btn-orange"> <i class="fa fa-times-circle"></i>
                    </div>
                </form>
            </div>
            <div class="row">

                <form method="POST" action="insert.jsp">
                    <div class="col three">			
                        <input name="Intrest" type="submit" value="Motors" class="btn btn-sea"> <i class="fa fa-image"></i>			
                    </div>
                </form>


                <form method="POST" action="insert.jsp">    
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Design Of Circuit" class="btn btn-sea"> <i class="fa fa-pencil"></i>
                    </div>
                </form>

                <form method="POST" action="insert.jsp">   
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Network" class="btn btn-sea"> <i class="fa fa-shopping-cart"></i>
                    </div>
                </form>


                <form method="POST" action="insert.jsp">    
                    <div class="col three">
                        <input name="Intrest" type="submit" value="Raspberry" class="btn btn-sea"> <i class="fa fa-times-circle"></i>
                    </div>
                </form>
            </div>

            <h1 style="text-align: center"><b>Done?.....You can login now......!</b></h1><br>
        </div>

        <%
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/Love_To_Learn", "Mohammed_Numan", "mohammed");
                String sql = "Select Intrest from Intrests where User_Id = (Select User_Id from Users where User_Name = '" + Names + "')";
                pst = con.prepareStatement(sql) ;
                rs = pst.executeQuery();
                rs.next();
                //System.out.println("Hello");
        %>
    <center><h3>Intrests Selected</h3></center>
    <center>
    <table style="border: 2px">
        <tbody>
            <%
                do {
            %><tr> <%= rs.getString(1)%> |</tr><%
                        } while (rs.next());
                    } catch (Exception e) {
                        
                        }%>
        </tbody>
    </table>
    </center>
    <div class="col one">
        <a href="ExcessIntrest.jsp" class="btn btn-linkedin icon-only">Done</a>	
    </div>

</body>
</html>
