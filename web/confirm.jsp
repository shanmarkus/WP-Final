<%-- 
    Document   : confirm
    Created on : May 29, 2013, 9:01:35 PM
    Author     : Shan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%
    String userID = session.getAttribute("name").toString();
    out.println(userID);
    User user = new DBManager().getLoginUser(userID);
    user.getName();
    out.println(user.getName());
    out.println(user.getEmail());
    user.getEmail();
%>

        <h1>Hello World!</h1>
        
        
<%@ include file="footer.jsp" %>
