<%--
    Document   : shelf
    Created on : Apr 11, 2013, 4:07:30 PM
    Author     : Jason
--%>

<%@page import="Objects.ProductInCart"%>
<%@page import="Objects.DBManager"%>
<%@page import="Objects.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Catalog</title>

        <!-- CSS -->
        <link rel="StyleSheet" type="text/css" href="CSS/main-nav-bar.css">
        <link rel="StyleSheet" type="text/css" href="CSS/Bootstrap.css">
        <link rel="StyleSheet" type="text/css" href="CSS/shelf.css">
    </head>
    <body class="container">
        <!--        main navigation menu-->
        <div class="navbar">
            <div class="navbar-inner">
                <div class="container" style="width: auto;">
                    <a class="brand" href="shelf.jsp">IT Store</a>
                    <ul class="nav" role="navigation">
                        <li class="dropdown">
                            <a id="drop1" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Hardware <b class="caret"></b></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://google.com">Processors</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#anotherAction">Mother Board</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Hard Disk</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">VGA Card</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" id="drop2" role="button" class="dropdown-toggle" data-toggle="dropdown">Software <b class="caret"></b></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Game</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Video and Photo</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Anti virus</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Others</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav pull-right">
                        <li id="fat-menu" class="dropdown">
                            <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">Dropdown 3 <b class="caret"></b></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>

        </div>

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

            <%
                ArrayList<ProductInCart> cart = (ArrayList<ProductInCart>) request.getSession(false).getAttribute("cart");

                out.println("<div class=\"span3\">");
                out.println("Items in cart: " + cart.size());
                out.println("<a href=\"checkout.jsp\">Check out</a>");
                out.println("</div>");
            %>

        </div>
        <!-- Javascript -->
        <script type="text/javascript">
            <jsp:include page="js/jquery.js" />
            <jsp:include page="js/bootstrap.js" />
        </script>       
    </body>
</html>
