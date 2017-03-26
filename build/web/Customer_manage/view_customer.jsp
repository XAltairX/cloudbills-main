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
                              <a href="../Stock_manage/add_stock.jsp">Add Stock</a>
                              <a href="../Stock_manage/update_stock.jsp">Update Stock</a>
                              <a href="../Stock_manage/remove_stock.jsp">Remove Stock</a>
                              <a href="../Stock_manage/review_stock.jsp">Review Stock</a>
                            </div>
                            </div>
                </li>
                <li>
                          <div class="dp">
                          <a href="#" class="dropbtn">Customer</a>
                            <div class="dp-content">
                              <a href="add_customer.jsp">Add Customers</a>
                              <a href="view_customer.jsp">View Customers</a>
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
    
 <div class="content">
     
          <div class="row">
                <div class="columns small-12 text-center">
              <h1 class="sign-title">Enter the Customer id or Customer name</h1>
              </div>
          </div>
        <br>
        
        <div class="row">
	<div class="columns small-12 medium-7 medium-centered large-5 large-centered">
	<form action="view_customer_val.jsp" class="form" method="post">
                    
                    <label for="phone">
	<strong>Customer Phone Number</strong>
	<input type="text" name="phone" id="phone"
                    accept="" placeholder="Enter the customer phone number"
	value="" tabindex="1" required="required" />
                    </label>
                    <button class="sign-button" tabindex="2" id="submitlogin">View Customer</button>
	</form>
                </div>
        </div>

    </body>
</html>