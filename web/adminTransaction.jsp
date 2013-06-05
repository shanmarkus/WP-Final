<%-- 
    Document   : adminTransaction
    Created on : Jun 3, 2013, 7:57:07 PM
    Author     : Shan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="headerAdmin.jsp" %>

<body>
    <%
        String admin = "administrator";
        User u = new DBManager().getLoginUser(admin);
        String name = u.getName();

//        String name = request.getSession(false).getAttribute("name").toString();
    %>

    <h1>Hello <%= name%>!</h1>
    <br>
    <h2>Transaction Setting(s)</h2>
    <br>
    <table border="1">
        <thead>
            <tr>
                <th>Invoice ID</th>
                <th>Costumer Name</th>
                <th>Log</th>
            </tr>
        </thead>
        <tbody>

            <%
                ArrayList<Invoice> invoices = new DBManager().getAllInvoice();
                for (Invoice i : invoices) {
                    String userID = i.getUserID();
                    User user = new DBManager().getUser(userID);
                    out.println("<tr>");
                    out.println("<td>" + i.getInvoiceID() + "</td>");
                    out.println("<td>" + user.getName() + "</td>");
                    out.println("<td>" + i.getLog() + "</td>");
                    out.println("</tr>");
                }

            %>
        </tbody>
</body>
</html>
