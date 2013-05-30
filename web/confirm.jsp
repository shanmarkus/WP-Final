<%-- 
    Document   : confirm
    Created on : May 29, 2013, 9:01:35 PM
    Author     : Shan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%
    String userID = session.getAttribute("name").toString();
    User user = new DBManager().getLoginUser(userID);
    out.println(user.getName());
    
%>

        <h1>Hello World!</h1>
        
        
<%@ include file="footer.jsp" %>
