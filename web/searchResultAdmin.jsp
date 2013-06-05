<%-- 
    Document   : searchResultAdmin
    Created on : Jun 5, 2013, 7:18:41 PM
    Author     : Shan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="headerAdmin.jsp" %>
<body>
    <%
        String admin ="administrator";
        User u = new DBManager().getLoginUser(admin);
        String name = u.getName();
        String usertype = session.getAttribute("usertype").toString();

//        String name = request.getSession(false).getAttribute("name").toString();
    %>
    
   
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
