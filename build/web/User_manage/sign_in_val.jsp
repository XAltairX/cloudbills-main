<%@ page import ="java.sql.*" %>
<%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud","root", "root");

    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    String shop = request.getParameter("shopname");
    
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where user_name='" + userid + "' and password='" + pwd + "' and shop_name='"+shop+"'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        response.sendRedirect("../home.jsp");
    } 
    else {
        %>
        <center>
            Invalid Details. Try Again
         </center>
        <%@ include  file="sign_in.jsp" %>
          <%
                    }
          %>