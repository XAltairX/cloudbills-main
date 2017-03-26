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
                <h1><a href="home.jsp"><img src="../cloudbills.png" alt="CLOUD BILLS" height="50" ></a></h1>
            </li>
            <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
        </ul>

        <section class="top-bar-section">
            <!-- Right Nav Section -->
            <ul class="right">
                <li>
                          <div class="dp">
                          <a href="http://repository.genmymodel.com/" class="dropbtn">Users</a>
                            <div class="dp-content">
                              <a href="#">Add Permissions</a>
                            </div>
                            </div>
                </li>
                <li>
                          <div class="dp">
                          <a href="http://repository.genmymodel.com/" class="dropbtn">Stock</a>
                            <div class="dp-content">
                              <a href="#">Add Stock</a>
                              <a href="#">Update Stock</a>
                              <a href="#">Remove Stock</a>
                              <a href="#">Review Stock</a>
                            </div>
                            </div>
                </li>
                <li>
                          <div class="dp">
                          <a href="http://repository.genmymodel.com/" class="dropbtn">Customer</a>
                            <div class="dp-content">
                              <a href="#">Add Customers</a>
                              <a href="#">View/Edit Customers</a>
                            </div>
                            </div>
                </li>
                <li>
                          <div class="dp">
                          <a href="http://repository.genmymodel.com/" class="dropbtn">Bill</a>
                            <div class="dp-content">
                              <a href="#">Generate Bill</a>
                              <a href="#">Print Bill</a>

                            </div>
                            </div>
                </li>

                

                <li class="has-form">
                    <a href="User_manage/sign_in.jsp" class="button secondary radius">Sign in</a>
                </li>
                <li class="has-form">
                    <a href="User_manage/sign_up.jsp" class="button radius">Sign up</a>
                </li>
            </ul>
        </section>
    </nav>
</div>
    </body>
</html>