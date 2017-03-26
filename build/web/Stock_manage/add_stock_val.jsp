<%@ page import ="java.sql.*" %>
<%
    String proid = request.getParameter("proid");    
    String proname = request.getParameter("proname");
    String units = request.getParameter("units");
    String qty = request.getParameter("qty");
    String price_r = request.getParameter("price_r");
    String price_w = request.getParameter("price_w");   
    String mrp = request.getParameter("mrp");
    String category = request.getParameter("category");
    
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud","root", "root");
    Statement st = con.createStatement();

    
    int i = st.executeUpdate("insert into stock(product_id,product_name,units,quantity,price_retail,price_whole,mrp,category) values ('" + proid + "','" + proname + "','"+units+"','"+qty+"','"+price_r+"','"+price_w+"','"+mrp+"','"+category+"')");
    if (i > 0) {
        %>
        <center> Successfullly added </center>
        <%@include file="add_stock.jsp"%>  
        <%
    } 
    else {
        %>
        <center> UnSuccessful </center>
        <%@include file="add_stock.jsp"%>  
        <%
    }
%>