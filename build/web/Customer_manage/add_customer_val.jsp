<%@ page import ="java.sql.*" %>
<%
    String custid = request.getParameter("custid");    
    String custname = request.getParameter("custname");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String bal = request.getParameter("bal");
    String addr = request.getParameter("addr");   

    
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud","root", "root");
    Statement st = con.createStatement();

    
    int i = st.executeUpdate("insert into customer(customer_id,customer_name,phone,email,balance,address) values ('" + custid + "','" + custname + "','"+phone+"','"+email+"','"+bal+"','"+addr+"')");
    if (i > 0) {
        %>
        <center background:green> Successfullly added </center>
        <%@include file="add_customer.jsp"%>  
        <%
    } 
    else {
        %>
        <center background:red> UnSuccessful </center>
        <%@include file="add_customer.jsp"%>  
        <%
    }
%>