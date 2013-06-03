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
                    String userIDtemp = i.getUserID();
//                    Integer userID = Integer.parseInt(userIDtemp);
//                    User user = new DBManager().getUser(userID);
                    
                    out.println("<tr>");
                    out.println("<td>" + i.getInvoiceID()+ "</td>");
//                    out.println("<td>" + user.getName() + "</td>");
                    out.println("<td>" + i.getLog() + "</td>");
                    
                    out.println("<td>");
                    out.println("<form action=\"myServlet\" method=\"POST\">");
                    out.println("<input type=\"hidden\" name=\"page\" value=\"admintransaction\">");
                    out.println("<input type=\"hidden\" name=\"invoicetID\" value=\"" + i.getInvoiceID() + "\">");
//                    out.println("<input type=\"hidden\" name=\"name\" value=\"" + user.getName()+ "\">");
                    out.println("<input type=\"hidden\" name=\"command\" value=\"edit\">");
                    out.println("<input type=\"submit\" value=\"Edit\">");
                    out.println("</form>");
                    out.println("<form action=\"myServlet\" method=\"POST\" onsubmit=\"return confirmation();\">");
                    out.println("<input type=\"hidden\" name=\"page\" value=\"admintransaction\">");
                    out.println("<input type=\"hidden\" name=\"invoicetID\" value=\"" + i.getInvoiceID() + "\">");
                    out.println("<input type=\"hidden\" name=\"command\" value=\"delete\">");
                    out.println("<input type=\"submit\" value=\"Delete\">");
                    out.println("</form>");
                    out.println("</td>");
                    out.println("</tr>");
                }

            %>
        </tbody>
</body>
</html>
