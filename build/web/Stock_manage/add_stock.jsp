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
    
 <div class="content">
     
          <div class="row">
                <div class="columns small-12 text-center">
              <h1 class="sign-title">Enter the product details</h1>
              </div>
          </div>
        <br>
        
        <div class="row">
	<div class="columns small-12 medium-7 medium-centered large-5 large-centered">
	<form action="add_stock_val.jsp" class="form" method="post">
                    
                    <label for="productid">
	<strong>Product Id</strong>
	<input type="text" name="proid" id="proid"
                    accept="" placeholder="Enter the product id"
	value="" tabindex="1" required="required" />
                    </label>
	<label for="productname">
	<strong>Product name</strong>
	<input type="text" name="proname" id="proname"
                    accept="" placeholder="Enter Product name"
	value="" tabindex="2" required="required" />
                    </label>
                    <label for="units"> 
	<strong>Units</strong>
	<input type="text" name="units" id="units"
	placeholder="Enter no of units available" tabindex="3"
	required="required" />
	</label>
                   <label for="qty"> 
	<strong>Quantity</strong>
	<input type="text" name="qty" id="qty"
	placeholder="Enter the quantity" tabindex="4"
	required="required" />
	</label>
                   <label for="price_retail"> 
	<strong>Price-Retail</strong>
	<input type="number" name="price_r" id="price_r"
	placeholder="Enter retail price of product" tabindex="5"
	required="required" />
	</label>
                   <label for="price_whole"> 
	<strong>Price-Wholesale</strong>
	<input type="number" name="price_w" id="price_w"
	placeholder="Enter wholesale price of product" tabindex="6"
	required="required" />
	</label>
                   <label for="mrp"> 
	<strong>MRP</strong>
	<input type="number" name="mrp" id="mrp"
	placeholder="Enter MRP of product" tabindex="7"
	required="required" />
	</label>
                    <label for="category"> 
	<strong>Category</strong>
	<input type="text" name="category" id="category"
	placeholder="Enter category of product" tabindex="8"
	required="required" />
	</label>
	<button class="sign-button" tabindex="9" id="submitlogin">Submit</button>
	</form>
 </div>
            </div>
    </body>
    </html>