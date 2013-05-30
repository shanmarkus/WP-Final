<%-- 
    Document   : searchResult
    Created on : May 30, 2013, 3:38:58 PM
    Author     : Shan
--%>

<%@ include file="header.jsp" %>

<!--        Main Container-->
<div class="row">
    <div class="span3">
        <h4 class="span12">Hello <%= session.getAttribute("name")%>!</h4>
    </div>
    <div class="span3 offset6"> 
        <%
    ArrayList<ProductInCart> cart = (ArrayList<ProductInCart>) request.getSession(false).getAttribute("cart");
    out.println("Items in cart: " + cart.size());
    out.println("<a href=\"checkout.jsp\">Check out</a>");
        %> 
    </div>

</div>

<div>
    <div class="span12 marginTop">
        <%
            String search = (session.getAttribute("search").toString());
            
            ArrayList<Product> products = new DBManager().searchSpesificProducts(search+"%");

            for (Product p : products) {
                out.println("<div class=\"row\">");
                out.println("<div class=\"span3\">");
                out.println("<img src=\"" + p.getPictureURL() + "\" height=\"20%\">");
                out.println("</div>");
                out.println("<div class=\"span3 offset1\">");
                out.println("<div class=\"row\">");
                out.println("Name: " + p.getName() + "<br />");
                out.println("Description: " + p.getDescription() + "<br />");
                out.println("Price: " + p.getPrice());
                out.println("</div>");
                out.println("</div>");
                out.println("<div class=\"span4\">");
                out.println("<form action=\"myServlet\" method=\"POST\">");
                out.println("<input type=\"hidden\" name=\"productID\" value=\"" + p.getProductID() + "\">");
                out.println("<input type=\"hidden\" name=\"page\" value=\"buy\">");
                out.println("<div class=\"input-append\">");
                out.println("<input type=\"text\" name=\"amount\" class=\"input-medium\">");
                out.println("<input type=\"submit\" class=\"btn\" value=\"Buy\">");
                out.println("</div>");
                out.println("</form>");
                out.println("</div>");
                out.println("</div>");
                out.println("<hr>");
            }
        %>
    </div>





</div>
<!-- Javascript -->
<script type="text/javascript">
    <jsp:include page="js/jquery.js" />
    <jsp:include page="js/bootstrap.js" />
</script>       
</body>
</html>
