<%-- 
    Document   : headerAdmin
    Created on : May 31, 2013, 1:46:10 PM
    Author     : Shan
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Objects.User"%>
<%@page import="Objects.Invoice"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Objects.User"%>
<%@page import="Objects.Product"%>
<%@page import="Objects.DBManager"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrator page</title>

        <!--        Include CSS-->
        <link rel="StyleSheet" type="text/css" href="CSS/mainmenu.css">
        <link rel="StyleSheet" type="text/css" href="CSS/main-nav-bar.css">
        <link rel="StyleSheet" type="text/css" href="CSS/bootstrap.css">
        <link rel="StyleSheet" type="text/css" href="CSS/shelf.css">
        <link rel="StyleSheet" type="text/css" href="CSS/general.css">

        <script type="text/javascript">
            function confirmation() {
                var result;

                if (confirm('Are you sure?')) {
                    result = true;
                } else {
                    result = false;
                }

                return result;
            }
        </script>
    </head>

    <body class="container">
        <!--        main navigation menu-->
        <div class="navbar">
            <div class="navbar-inner">
                <div class="container" style="width: auto;">
                    <a class="brand" href="#">IT Store</a>
                    <ul class="nav" role="navigation">
                        <li class="dropdown pull-left">
                            <a id="drop1" href="admin.jsp" role="button" class="dropdown-toggle" data-toggle="dropdown">Admin Menu <b class="caret"></b></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
                                <!--  Example form for submiting the value -->
                                <form action="myServlet" method="post">
                                    <input type="hidden" name="page" value="adminheader">
                                    <input type="hidden" name="action" value="stocksystem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="$(this).closest('form').submit();" value="">Stock System</a></li>
                                </form>
                                <li role="presentation" class="divider"></li>
                                <form action="myServlet" method="post">
                                    <input type="hidden" name="page" value="adminheader">
                                    <input type="hidden" name="action" value="usersetting">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="$(this).closest('form').submit();" value="">User Setting</a></li>
                                </form>
                                <li role="presentation" class="divider"></li>
                                <form action="myServlet" method="post">
                                    <input type="hidden" name="page" value="adminheader">
                                    <input type="hidden" name="action" value="transaction">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="$(this).closest('form').submit();" value="">Transaction Record</a></li>
                                </form>
<!--                                <li role="presentation" class="divider"></li>
                                <form action="myServlet" method="post">
                                    <input type="hidden" name="page" value="categories">
                                    <input type="hidden" name="category" value="hardware">
                                    <input type="hidden" name="subcategory" value="vgacard">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="$(this).closest('form').submit();" value="">Vga Card</a></li>
                                </form>-->
                            </ul>
                        </li>

                        <!--                        Search Box-->
                        <li class="pull-right">
                            <form class="navbar-search" action="myServlet" method="post">
                                <input type="hidden" name="page" value="adminsearchbar">
                                <input type="radio" value="user" name="searchtype"> User
                                <input type="radio" value="product" name="searchtype"> Product
                                <input type="text" class="search-query" placeholder="Search" name="search" value="search">
                            </form>
                        </li>
                    </ul>
                </div>
            </div>

        </div>