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
                </div>
            </div>

        </div>