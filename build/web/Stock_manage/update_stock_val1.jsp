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


String sql="update stock set product_name='"+proname+"',units='"+units+"',quantity='"+qty+"',price_retail='"+price_r+"',price_whole='"+price_w+"',mrp='"+mrp+"',category='"+category+"' where product_id='"+proid+"'";

int i = st.executeUpdate(sql);
    if (i > 0) {
        %>
        <center> Successfullly updated </center>
        <%@include file="update_stock.jsp"%>  
        <%
    } 
    else {
        %>
        <center> UnSuccessful </center>
        <%@include file="update_stock.jsp"%>  
        <%
    }
%>