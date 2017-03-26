<!doctype html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://d1ur48lmnajhsr.cloudfront.net/css/www-index-style.0da9602185dc0f036a77.css">
<link rel="stylesheet" type="text/css" href="newcss.css">

<title>Online Billing Software | Create, Manage Bills Online</title>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        response.sendRedirect("User_manage/sign_in.jsp");
    }
%>
<body id="index">
<div id="body-wrapper">
	<div class="contain-to-grid">
    <nav class="top-bar" data-topbar="" role="navigation">
        <ul class="title-area">
            <li class="left">
                <h1><a href="home.jsp"><img src="cloudbills.png" alt="CLOUD BILLS" height="50" ></a></h1>
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
                              <a href="User_manage/add_permissions.jsp">Add Permissions</a>
                              <a href="User_manage/change_pass.jsp"> Change Password</a>
                            </div>
                   
                <li>
                          <div class="dp">
                          <a href="#" class="dropbtn">Stock</a>
                            <div class="dp-content">
                              <a href="Stock_manage/add_stock.jsp">Add Stock</a>
                              <a href="Stock_manage/update_stock.jsp">Update Stock</a>
                              <a href="Stock_manage/remove_stock.jsp">Remove Stock</a>
                              <a href="Stock_manage/review_stock.jsp">Review Stock</a>
                            </div>
                            </div>
                </li>
                <li>
                          <div class="dp">
                          <a href="#" class="dropbtn">Customer</a>
                            <div class="dp-content">
                              <a href="Customer_manage/add_customer.jsp">Add Customers</a>
                              <a href="Customer_manage/view_customer.jsp">View Customers</a>
                            </div>
                            </div>
                </li>
                <li>
                          <div class="dp">
                          <a href="#" class="dropbtn">Bill</a>
                            <div class="dp-content">
                              <a href="Bill_manage/generate_bill.jsp">Generate Bill</a>
                              <a href="Bill_manage/print_bill.jsp">Print Bill</a>
                            </div>
                            </div>
                </li>

                
                <li class="has-form">
                    <a href="User_manage/logout.jsp" class="button secondary radius">Logout</a>
                </li>
 
            </ul>
        </section>    

    </nav>
</div>
       <div class="content">
        <br>
        <br>
        <br>
          <div class="row">
                <div class="columns small-12 text-center">
              <h1 class="sign-title">Welcome ${userid},</h1>
              <h1>Please choose an option from the top right corner to start</h2>
              </div>
          </div>
    </body>
</html>