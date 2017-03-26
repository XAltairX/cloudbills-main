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
<%        response.sendRedirect("../User_manage/sign_in.jsp");
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
              <h1 class="sign-title">Enter the Customer details</h1>
              </div>
          </div>
        <br>
        
        <div class="row">
	<div class="columns small-12 medium-7 medium-centered large-5 large-centered">
	<form action="add_customer_val.jsp" class="form" method="post">
                    
                    <label for="cust_id">
	<strong>Customer Id</strong>
	<input type="text" name="custid" id="custid"
                    accept="" placeholder="Enter the Customer id"
	value="" tabindex="1" required="required" />
                    </label>
	<label for="custname">
	<strong>Customer name</strong>
	<input type="text" name="custname" id="custname"
                    accept="" placeholder="Enter Customer name"
	value="" tabindex="2" required="required" />
                    </label>
                    <label for="phone"> 
	<strong>Phone Number</strong>
	<input type="number" name="phone" id="phone"
	placeholder="Enter phone number of customer" tabindex="3"
	required="required" />
	</label>
                   <label for="email"> 
	<strong>Email Id</strong>
	<input type="email" name="email" id="email"
	placeholder="Enter the email id of customer" tabindex="4"
	required="required" />
	</label>
                   <label for="bal"> 
	<strong>Balance</strong>
	<input type="number" name="bal" id="bal"
	placeholder="Enter the balance amount of customer" tabindex="5"
	required="required" />
	</label>
                   <label for="addr"> 
	<strong>Address</strong>
	<input type="text" name="addr" id="addr"
	placeholder="Enter address of customer" tabindex="6"
	required="required" />
	</label>
	<button class="sign-button" tabindex="7" id="submitlogin">Add Customer</button>
	</form>
            </div>
            </div>
    </body>
    </html>