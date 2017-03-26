package org.apache.jsp.Bill_005fmanage;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class generate_005fbill_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\" xmlns=\"http://www.w3.org/1999/html\">\n");
      out.write("<head>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://d1ur48lmnajhsr.cloudfront.net/css/www-index-style.0da9602185dc0f036a77.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../newcss.css\">\n");
      out.write("<title>Online Billing Software | Create, Manage Bills Online</title>\n");

    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
      out.write("\n");
      out.write("<center>Not Logged in</center>\n");
   
        response.sendRedirect("../User_manage/sign_in.jsp");
    }

      out.write("\n");
      out.write("<body id=\"index\">\n");
      out.write("<div id=\"body-wrapper\">\n");
      out.write("\t<div class=\"contain-to-grid\">\n");
      out.write("    <nav class=\"top-bar\" data-topbar=\"\" role=\"navigation\">\n");
      out.write("        <ul class=\"title-area\">\n");
      out.write("            <li class=\"left\">\n");
      out.write("                <h1><a href=\"../home.jsp\"><img src=\"../cloudbills.png\" alt=\"CLOUD BILLS\" height=\"50\" ></a></h1>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"toggle-topbar menu-icon\"><a href=\"#\"><span>Menu</span></a></li>\n");
      out.write("        </ul>\n");
      out.write("\n");
      out.write("<section class=\"top-bar-section\">\n");
      out.write("            <!-- Right Nav Section -->\n");
      out.write("            <ul class=\"right\">\n");
      out.write("                <li>\n");
      out.write("                          <div class=\"dp\">\n");
      out.write("                          <a href=\"#\" class=\"dropbtn\">Users</a>\n");
      out.write("                            <div class=\"dp-content\">\n");
      out.write("                              <a href=\"../User_manage/add_permissions.jsp\">Add Permissions</a>\n");
      out.write("                              <a href=\"../User_manage/change_pass.jsp\"> Change Password</a>\n");
      out.write("                            </div>\n");
      out.write("                   \n");
      out.write("                <li>\n");
      out.write("                          <div class=\"dp\">\n");
      out.write("                          <a href=\"#\" class=\"dropbtn\">Stock</a>\n");
      out.write("                            <div class=\"dp-content\">\n");
      out.write("                              <a href=\"add_stock.jsp\">Add Stock</a>\n");
      out.write("                              <a href=\"update_stock.jsp\">Update Stock</a>\n");
      out.write("                              <a href=\"remove_stock.jsp\">Remove Stock</a>\n");
      out.write("                              <a href=\"review_stock.jsp\">Review Stock</a>\n");
      out.write("                            </div>\n");
      out.write("                            </div>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                          <div class=\"dp\">\n");
      out.write("                          <a href=\"#\" class=\"dropbtn\">Customer</a>\n");
      out.write("                            <div class=\"dp-content\">\n");
      out.write("                              <a href=\"../Customer_manage/add_customer.jsp\">Add Customers</a>\n");
      out.write("                              <a href=\"../Customer_manage/view_customer.jsp\">View Customers</a>\n");
      out.write("                            </div>\n");
      out.write("                            </div>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                          <div class=\"dp\">\n");
      out.write("                          <a href=\"#\" class=\"dropbtn\">Bill</a>\n");
      out.write("                            <div class=\"dp-content\">\n");
      out.write("                              <a href=\"../Bill_manage/generate_bill.jsp\">Generate Bill</a>\n");
      out.write("                              <a href=\"../Bill_manage/print_bill.jsp\">Print Bill</a>\n");
      out.write("                            </div>\n");
      out.write("                            </div>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                \n");
      out.write("                <li class=\"has-form\">\n");
      out.write("                    <a href=\"../User_manage/logout.jsp\" class=\"button secondary radius\">Logout</a>\n");
      out.write("                </li>\n");
      out.write(" \n");
      out.write("            </ul>\n");
      out.write("        </section>   \n");
      out.write("    </nav>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<form action=\"generate_bill.jsp\" method=\"post\">\n");
      out.write("<table align=\"center\" width=\"100%\" border=\"1\">  \n");
      out.write("  <tr align=\"center\">\n");
      out.write("      <th colspan=\"3\" class=\"hide_all\"> Product Name <input type=\"text\" value=\"\" id=\"proname\" name=\"proname\" required=\"\"></th> \n");
      out.write("      <th colspan=\"3\" class=\"hide_all\"> Units<input type=\"number\" value=\"\" id=\"units\" name=\"units\" required=\"\"></th>\n");
      out.write("      <th class=\"hide_all\"><button type=\"submit\">Add</submit></th>\n");
      out.write("</tr>\n");
      out.write("<tr font-weight: bold>\n");
      out.write("   <th>Product ID</th>\n");
      out.write("   <th>Product Name</th>\n");
      out.write("   <th>Units</th>\n");
      out.write("   <th>Quantity</th>\n");
      out.write("   <th>Price</th>\n");
      out.write("    <th>Rate</th>\n");
      out.write("</tr>\n");
      out.write("        \n");
      out.write("            ");


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
            
      out.write("\n");
      out.write("        <tr align=\"center\">\n");
      out.write("        <td>");
      out.print(rs1.getString("product_id") );
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs1.getString("product_name") );
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs1.getString("units") );
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs1.getString("quantity") );
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs1.getString("price") );
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rate1 );
      out.write("</td>\n");
      out.write("        </tr>\n");
      out.write("        ");

           total=total+ Integer.parseInt(rate1);
         }
          
      out.write("\n");
      out.write("          </table>\n");
      out.write("            <button type=\"button\">Finish</button>\n");
      out.write("            </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
