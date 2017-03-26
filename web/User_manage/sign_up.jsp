<!doctype html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://d1ur48lmnajhsr.cloudfront.net/css/www-index-style.0da9602185dc0f036a77.css">
<link rel="stylesheet" type="text/css" href="../newcss.css">
<title>Online Billing Software | Create, Manage Bills Online</title>

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
                              <a href="add_permissions.jsp">Add Permissions</a>
                              <a href="change_pass.jsp"> Change Password</a>
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
                    <a href="sign_in.jsp" class="button secondary radius">Sign in</a>
                </li>
                <li class="has-form">
                    <a href="sign_up.jsp" class="button radius">Sign up</a>
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
              <h1 class="sign-title">Join Cloud Bills</h1>
              </div>
          </div>
        <br>
        <div class="row">
	<div class="columns small-12 medium-7 medium-centered large-5 large-centered">
	<form action="sign_up_val.jsp" class="form" method="post">
                    <label for="shopname">
	<strong>Shop Name</strong>
	<input type="text" name="shopname" id="shopname"
                    placeholder="Enter Shopname"
	value="" tabindex="1" required="required" />
                    </label>
	<label for="username">
	<strong>Username</strong>
	<input type="text" name="username" id="username"
                    placeholder="Enter Username"
	value="" tabindex="2" required="required" />
                    </label>
                    <label for="password"> 
	<strong>Password</strong>
	<input type="password" name="password" id="password"
	placeholder="Select a password" tabindex="3"
	required="required" />
	</label>
                    <label for="cpassword"> 
	<strong>Confirm Password</strong>
	<input type="password" name="cpassword" id="cpassword"
	placeholder="Re-Enter password" tabindex="4"
	required="required" />
	</label>
                    <label for="email">
	<strong>Email</strong>
	<input type="email" name="email" id="email"
                     placeholder="Enter Email Id"
	value="" tabindex="5" required="required" />
                    </label>
                   <label for="phone">
	<strong>Phone Number</strong>
	<input type="number" name="phone" id="phone" maxlength="10"
                     placeholder="Enter Phone number"
	value="" tabindex="6" required="required" />
                    </label>
	<button class="sign-button" tabindex="7" id="submitlogin">Sign up</button>
	</form>
				
                    <ul class="no-bullet">
                    <li>
	<a href="sign_in.jsp" class="sign-link">Already have an account? Sign in</a>
	</li>
	</ul>
	</div>
    </body>
        </html>