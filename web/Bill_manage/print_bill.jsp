<%@page import="com.lowagie.text.pdf.PdfPTable"%>
<%@page import="java.io.*"%>
<%@page import="com.lowagie.text.pdf.PdfWriter"%>
<%@page import ="java.sql.*" %>
<%@page import="com.lowagie.text.*"%>
<%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud","root", "root");
    String name="";
    String price="";
    try
    {
    Document document=new Document();
       PdfWriter.getInstance(document,new FileOutputStream("E:/data.pdf"));
       document.open();
       PdfPTable table=new PdfPTable(2);
       table.addCell("Name");
       table.addCell("Price");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from bill1");
    while(rs.next()) {
        name=rs.getString("name");
        price=rs.getString("price");
        //out.print(name+" "+price);
       table.addCell(name);
        table.addCell(price);
    }
       document.add(table);
       document.close();
    } 
    catch(Exception e){}
          %>