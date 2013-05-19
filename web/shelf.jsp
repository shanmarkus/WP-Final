<%--
    Document   : shelf
    Created on : Apr 11, 2013, 4:07:30 PM
    Author     : Jason
--%>

<%@ include file="header.jsp" %>

        <!--        Main Container-->
        <div class="row">
            <h1 class="span12">Hello <%= session.getAttribute("name")%>!</h1>

            <div class="span8 marginTop">
                <%
                    ArrayList<Product> products = new DBManager().getAllProducts();

                    for (Product p : products) {
                        out.println("<div class=\"row\">");
                        out.println("<div class=\"span3\">");
                        out.println("<img src=\"" + p.getPictureURL() + "\" height=\"20%\">");
                        out.println("</div>");
                        out.println("<div class=\"span4\">");
                        out.println("<div class=\"row\">");
                        out.println("Name: " + p.getName() + "<br />");
                        out.println("Description: " + p.getDescription() + "<br />");
                        out.println("Price: " + p.getPrice());
                        out.println("</div>");
                        out.println("<form action=\"myServlet\" method=\"POST\">");
                        out.println("<input type=\"hidden\" name=\"productID\" value=\"" + p.getProductID() + "\">");
                        out.println("<input type=\"hidden\" name=\"page\" value=\"buy\">");
                        out.println("<div class=\"input-append\">");
                        out.println("<input type=\"text\" name=\"amount\">");
                        out.println("<input type=\"submit\" class=\"btn\" value=\"Buy\">");
                        out.println("</div>");
                        out.println("</form>");
                        out.println("</div>");
                        out.println("</div>");
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
