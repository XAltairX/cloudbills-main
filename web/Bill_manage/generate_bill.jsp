<!doctype html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://d1ur48lmnajhsr.cloudfront.net/css/www-index-style.0da9602185dc0f036a77.css">
<link rel="stylesheet" type="text/css" href="../newcss.css">
<title>Online Billing Software | Create, Manage Bills Online</title>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {%>
<center>Not Logged in</center>
<%   
        response.sendRedirect("../User_manage/sign_in.jsp");
    }
%>
<body id="index">
<div id="body-wrapper">
	<div class="contain-to-grid">
    <nav class="top-bar" data-topbar="" role="navigation">
        <ul class="title-area">
            <li class="left">
                <h1><a href="../home.jsp"><img src="../cloudbills.png" alt="CLOUD BILLS" height="50" ></a></h1>
            </li>
            <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
        </ul>

<section class="top-bar-section">
            <!-- Right Nav Section -->
            <ul class="right">
                <li>
                          <div class="dp">
                          <a href="#" class="dropbtn">Users</a>
                            <div class="dp-content">
                              <a href="../User_manage/add_permissions.jsp">Add Permissions</a>
                              <a href="../User_manage/change_pass.jsp"> Change Password</a>
                            </div>
                   
                <li>
                          <div class="dp">
                          <a href="#" class="dropbtn">Stock</a>
                            <div class="dp-content">
                              <a href="add_stock.jsp">Add Stock</a>
                              <a href="update_stock.jsp">Update Stock</a>
                              <a href="remove_stock.jsp">Remove Stock</a>
                              <a href="review_stock.jsp">Review Stock</a>
                            </div>
                            </div>
                </li>
                <li>
                          <div class="dp">
                          <a href="#" class="dropbtn">Customer</a>
                            <div class="dp-content">
                              <a href="../Customer_manage/add_customer.jsp">Add Customers</a>
                              <a href="../Customer_manage/view_customer.jsp">View Customers</a>
                            </div>
                            </div>
                </li>
                <li>
                          <div class="dp">
                          <a href="#" class="dropbtn">Bill</a>
                            <div class="dp-content">
                              <a href="../Bill_manage/generate_bill.jsp">Generate Bill</a>
                              <a href="../Bill_manage/print_bill.jsp">Print Bill</a>
                            </div>
                            </div>
                </li>

                
                <li class="has-form">
                    <a href="../User_manage/logout.jsp" class="button secondary radius">Logout</a>
                </li>
 
            </ul>
        </section>   
    </nav>
</div>
    
 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<form action="generate_bill.jsp" method="post">
<table align="center" width="100%" border="1">  
  <tr align="center">
      <th colspan="3" class="hide_all"> Product Name <input type="text" value="" id="proname" name="proname" required=""></th> 
      <th colspan="3" class="hide_all"> Units<input type="number" value="" id="units" name="units" required=""></th>
      <th class="hide_all"><button type="submit">Add</submit></th>
</tr>
<tr font-weight: bold>
   <th>Product ID</th>
   <th>Product Name</th>
   <th>Units</th>
   <th>Quantity</th>
   <th>Price</th>
    <th>Rate</th>
</tr>
        
            <%

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud","root", "root");
        Statement st = con.createStatement();
        Statement st1 = con.createStatement();
        Statement st2   = con.createStatement();
        Statement st3  = con.createStatement();
        ResultSet rs,rs1; 
        st.executeUpdate("create table if not exists bill_no (product_id varchar(25),product_name varchar(25),units varchar(10),quantity varchar(10),price varchar(10),rate varchar(10))");
       String proname ="";
       String proid="";
       String qty="";
       String price="";
       int units=0,total=0,rate=0,mrp=0;
        if(request.getParameter("proname")!=null)
        {
            proname = request.getParameter("proname");
            units= Integer.parseInt(request.getParameter("units"));
        }
        
    rs = st1.executeQuery("select * from stock where product_name='"+proname+"'");
     while(rs.next()) 
    {
        mrp=Integer.parseInt(rs.getString("price_retail"));
        proid=rs.getString("product_id");
        qty=rs.getString("quantity");
        price=rs.getString("price_retail");
        rate=units*mrp;
        st2.executeUpdate("insert into bill_no values('"+proid+"','"+proname+"','"+units+"','"+qty+"','"+price+"','"+rate+"')");
    }
     
        rs1=st3.executeQuery("select * from bill_no");
        while(rs1.next())
        {
            String rate1=rs1.getString("rate");
            %>
        <tr align="center">
        <td><%=rs1.getString("product_id") %></td>
        <td><%=rs1.getString("product_name") %></td>
        <td><%=rs1.getString("units") %></td>
        <td><%=rs1.getString("quantity") %></td>
        <td><%=rs1.getString("price") %></td>
        <td><%=rate1 %></td>
        </tr>
        <%
           total=total+ Integer.parseInt(rate1);
         }
          %>
          </table>
            <button type="button">Finish</button>
            </form>
    </body>
</html>







