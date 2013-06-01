<%-- 
    Document   : confirm
    Created on : May 29, 2013, 9:01:35 PM
    Author     : Shan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%
    ArrayList<ProductInCart> productsInCart = (ArrayList<ProductInCart>) request.getSession(false).getAttribute("cart");
    out.println(productsInCart.size());
    String userID = session.getAttribute("name").toString();
    User user = new DBManager().getLoginUser(userID);
%>
<div class="row">
    <h3>This is Your List of Order(s)</h3>
</div>

<table class="table">
    <thead>
        <tr>
            <th>Name</th>
            <th>Amount</th>
            <th>Price</th>
            <th>Total Price</th>
        </tr>
    </thead>
    <tbody>
        <%



            for (ProductInCart p : productsInCart) {

                Integer temp = p.getAmount() * p.getPrice();
                out.println("<tr>");
                out.println("<td>");
                out.println(p.getName());
                out.println("</td>");
                out.println("<td>");
                out.println(p.getAmount());
                out.println("</td>");
                out.println("<td>");
                out.println(p.getPrice());
                out.println("</td>");
                out.println("<td>");
                out.println(temp);
                out.println("</td>");
                out.println("</tr>");

            }

        %>
    </tbody>
</table>


<div class="row">
    <h3>Would like us to send to this address</h3>
</div>

<div class="row">
    <div class="span1">
        Name:
    </div>
    <div class="span6">
        <%=user.getName()%>
    </div>
</div>

<div class="row">
    <div class="span1">
        Address:
    </div>
    <div class="span6">
        <%=user.getAddress()%>
    </div>
</div>

<div class="row">
    <div class="span1">
        Email:
    </div>
    <div class="span6">
        <%=user.getEmail()%>
    </div>
</div>

    <div class="row">
        <form action="myServlet" method="post">
            <input type="hidden" name="page" value="confirmtransaction">
            <input type="submit" name="submit" value="submit">
            <input type="button" name="cancel" value="cancel" onclick="cancelConfirmPage();">
        </form>
    </div>



<%@ include file="footer.jsp" %>
