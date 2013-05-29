<%-- 
    Document   : checkout
    Created on : Apr 12, 2013, 11:15:01 AM
    Author     : Jason
--%>

<%@page import="Objects.ProductInCart"%>
<%@page import="Objects.ProductInCart"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jsp" %>


<%
    ArrayList<ProductInCart> productsInCart = (ArrayList<ProductInCart>) request.getSession(false).getAttribute("cart");

    if (productsInCart.size() == 0) {
        out.println("The cart is empty!<br>");
    } else {
%>

<table class="table table-hover">
    <thead>
    <td>&nbsp;</td>
    <td>Name</td>
    <td>Description</td>
    <td>Price</td>
    <td>Amount</td>
    <td>Total</td>
    <td>Action</td>
</thead>
<tbody>
    <%
        //delete all product
        out.println("<form action=\"myServlet\" method=\"POST\">");
        out.println("<input type=\"hidden\" name=\"page\" value=\"deleteall\">");
        out.println("<input type=\"submit\" class=\"span2\" value=\"Delete All\">");
        out.println("</form>");

        for (ProductInCart p : productsInCart) {
            out.println("<tr>");
            out.println("<td><img src=\"" + p.getPictureURL() + "\" class=\"span3\" style=\"height: 25%\" !important></td>");
            out.println("<td>" + p.getName() + "</td>");
            out.println("<td>" + p.getDescription() + "</td>");
            out.println("<td>" + p.getPrice() + "</td>");
            out.println("<td>" + p.getAmount() + "</td>");
            out.println("<td>" + p.getAmount() * p.getPrice() + "</td>");
            out.println("<td>");
            //delete per product
            out.println("<form action=\"myServlet\" method=\"POST\">");
            out.println("<input type=\"hidden\" name=\"productID\" value=\"" + p.getProductID() + "\">");
            out.println("<input type=\"hidden\" name=\"page\" value=\"delete\">");
            out.println("<input type=\"submit\" class=\"span2\" value=\"Delete\">");
            out.println("</form>");
            //edit amount
            out.println("<form action=\"myServlet\" method=\"POST\">");
            out.println("<input type=\"hidden\" name=\"productID\" value=\"" + p.getProductID() + "\">");
            out.println("<input type=\"hidden\" name=\"page\" value=\"editamount\">");
            out.println("<div class=\"input-append\">");
            out.println("<input type=\"text\" class=\"input-small\" name=\"newamount\">");
            out.println("<input type=\"submit\" class=\"btn\" value=\"Edit Amount\">");
            out.println("</div>");
            out.println("</form>");
            out.println("</td>");
            out.println("</tr>");
        }
    %>
</tbody>
</table>

<%
        out.println("<form action=\"myServlet\" method=\"POST\">");
        out.println("<input type=\"hidden\" name=\"page\" value=\"confirm\">");
        out.println("<input type=\"submit\" class=\"span2\" value=\"Confirm Order\">");
        out.println("</form>");
    }
%>

<a href="shelf.jsp">Back to shelf</a>
<br>

<%@ include file="footer.jsp" %>
