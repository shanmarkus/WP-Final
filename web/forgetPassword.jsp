<%-- 
    Document   : forgetPassword
    Created on : Jun 9, 2013, 4:46:24 PM
    Author     : Shan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget Password</title>
        <link rel="StyleSheet" type="text/css" href="CSS/bootstrap.css">
        <link rel="StyleSheet" type="text/css" href="CSS/index.css">
        <link rel="StyleSheet" type="text/css" href="CSS/mainmenu.css">
        <link rel="StyleSheet" type="text/css" href="CSS/main-nav-bar.css">
        <link rel="StyleSheet" type="text/css" href="CSS/bootstrap.css">
        <link rel="StyleSheet" type="text/css" href="CSS/shelf.css">
        <link rel="StyleSheet" type="text/css" href="CSS/general.css">
    </head>
    <body>
        <h1> Your Password is <%=session.getAttribute("password")%></h1>
        <br>
        <h1> Now <a href="index.jsp">Go back</a> and buy all stuff !!! </h1>
    </body>
</html>
