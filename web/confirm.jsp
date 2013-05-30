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
%>

<div class="row">
    <h3>Would like us to send to this address</h3>
</div>

<div class="row">
    <div class="span3">
        Name:
    </div>
    <div class="span10">
        <%=user.getName()%>
    </div>
</div>

<div class="row">
    <div class="span3">
        Address:
    </div>
    <div class="span10">
        <%=user.getAddress()%>
    </div>
</div>
    
<div class="row">
    <div class="span3">
        Email::
    </div>
    <div class="span10">
        <%=user.getEmail()%>
    </div>
</div>




<%@ include file="footer.jsp" %>
