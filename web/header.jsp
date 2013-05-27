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
        <link rel="StyleSheet" type="text/css" href="CSS/mainmenu.css">
        <link rel="StyleSheet" type="text/css" href="CSS/main-nav-bar.css">
        <link rel="StyleSheet" type="text/css" href="CSS/bootstrap.css">
        <link rel="StyleSheet" type="text/css" href="CSS/shelf.css">
        <link rel="StyleSheet" type="text/css" href="CSS/general.css">
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
                                <!--  Example form for submiting the value -->
                                <form action="myServlet" method="post">
                                    <input type="hidden" name="page" value="categories">
                                    <input type="hidden" name="category" value="hardware">
                                    <input type="hidden" name="subcategory" value="processor">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="$(this).closest('form').submit();" value="">Processors</a></li>
                                </form>
                                <li role="presentation" class="divider"></li>
                                <form action="myServlet" method="post">
                                    <input type="hidden" name="page" value="categories">
                                    <input type="hidden" name="category" value="hardware">
                                    <input type="hidden" name="subcategory" value="motherboard">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="$(this).closest('form').submit();" value="">Mother Board</a></li>
                                </form>
                                <li role="presentation" class="divider"></li>
                                <form action="myServlet" method="post">
                                    <input type="hidden" name="page" value="categories">
                                    <input type="hidden" name="category" value="hardware">
                                    <input type="hidden" name="subcategory" value="harddisk">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="$(this).closest('form').submit();" value="">Hard Disk</a></li>
                                </form>
                                <li role="presentation" class="divider"></li>
                                <form action="myServlet" method="post">
                                    <input type="hidden" name="page" value="categories">
                                    <input type="hidden" name="category" value="hardware">
                                    <input type="hidden" name="subcategory" value="vgacard">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="$(this).closest('form').submit();" value="">Vga Card</a></li>
                                </form>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" id="drop2" role="button" class="dropdown-toggle" data-toggle="dropdown">Software <b class="caret"></b></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
                                <form action="myServlet" method="post">
                                    <input type="hidden" name="page" value="categories">
                                    <input type="hidden" name="category" value="software">
                                    <input type="hidden" name="subcategory" value="game">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="$(this).closest('form').submit();" value="">Game</a></li>
                                </form>
                                <li role="presentation" class="divider"></li>
                                <form action="myServlet" method="post">
                                    <input type="hidden" name="page" value="categories">
                                    <input type="hidden" name="category" value="software">
                                    <input type="hidden" name="subcategory" value="videophoto">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="$(this).closest('form').submit();" value="">Video and Photo</a></li>
                                </form>
                                <li role="presentation" class="divider"></li>
                                <form action="myServlet" method="post">
                                    <input type="hidden" name="page" value="categories">
                                    <input type="hidden" name="category" value="software">
                                    <input type="hidden" name="subcategory" value="antivirus">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="$(this).closest('form').submit();" value="">Anti Virus</a></li>
                                </form>
                                <li role="presentation" class="divider"></li>
                                <form action="myServlet" method="post">
                                    <input type="hidden" name="page" value="categories">
                                    <input type="hidden" name="category" value="software">
                                    <input type="hidden" name="subcategory" value="other">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="$(this).closest('form').submit();" value="">Other</a></li>
                                </form>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>

        </div>