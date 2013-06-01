<%-- 
    Document   : adminStock
    Created on : May 31, 2013, 5:11:25 PM
    Author     : Shan
--%>

<%@page import="Objects.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="headerAdmin.jsp" %>
<body>
    <%
        String admin ="administrator";
        User u = new DBManager().getLoginUser(admin);
        String name = u.getName();
        
//        String name = request.getSession(false).getAttribute("name").toString();
    %>

    <h1>Hello <%= name%>!</h1>
    <br>
    <h2>Stock Setting(s)</h2>
    <br>
    <table border="1">
        <thead>
            <tr>
                <th>Category</th>
                <th>Sub category</th>
                <th>Name</th>
                <th>Description</th>
                <th>Stock</th>
                <th>Price</th>
                <th>Picture</th>
            </tr>
        </thead>
        <tbody>

            <%
                ArrayList<Product> products = new DBManager().getAllProducts();

                for (Product p : products) {

                    out.println("<tr>");
                    out.println("<td>" + p.getCategory() + "</td>");
                    out.println("<td>" + p.getSubcategory() + "</td>");
                    out.println("<td>" + p.getName()+ "</td>");
                    out.println("<td>" + p.getDescription() + "</td>");
                    out.println("<td>" + p.getStock() + "</td>");
                    out.println("<td>" + p.getPrice() + "</td>");
                    out.println("<td>" + p.getPictureURL() + "</td>");
                    out.println("<td>");
                    out.println("<form action=\"myServlet\" method=\"POST\">");
                    out.println("<input type=\"hidden\" name=\"page\" value=\"adminstock\">");
                    out.println("<input type=\"hidden\" name=\"productID\" value=\"" + p.getProductID() + "\">");
                    out.println("<input type=\"hidden\" name=\"name\" value=\"" + p.getName()+ "\">");
                    out.println("<input type=\"hidden\" name=\"command\" value=\"edit\">");
                    out.println("<input type=\"submit\" value=\"Edit\">");
                    out.println("</form>");
                    out.println("<form action=\"myServlet\" method=\"POST\" onsubmit=\"return confirmation();\">");
                    out.println("<input type=\"hidden\" name=\"page\" value=\"adminstock\">");
                    out.println("<input type=\"hidden\" name=\"productID\" value=\"" + p.getProductID() + "\">");
                    out.println("<input type=\"hidden\" name=\"command\" value=\"delete\">");
                    out.println("<input type=\"submit\" value=\"Delete\">");
                    out.println("</form>");
                    out.println("</td>");
                    out.println("</tr>");
                }

            %>
        </tbody>
    </table>
        <a href="addStock.jsp">Add new product</a>
    <strong>
        <a href="index.jsp">Go Back to Login Page</a>
    </strong>

    <%@ include file="footerAdmin.jsp" %>
