<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("username");    
    String pwd = request.getParameter("password");
    String shop = request.getParameter("shopname");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud","root", "root");
    Statement st = con.createStatement();

    
    int i = st.executeUpdate("insert into users(user_name,password,shop_name,email,phone_no) values ('" + user + "','" + pwd + "','"+shop+"','"+email+"','"+phone+"')");
    if (i > 0) {
        %>
        <center> Registration Successful </center>
        <%@include file="sign_in.jsp"%>  
        <%
    } 
    else {
        %>
        <center> Registration UnSuccessful </center>
        <%@include file="sign_up.jsp"%>  
        <%
    }
%>