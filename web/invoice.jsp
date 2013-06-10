<%-- 
    Document   : invoice
    Created on : Jun 2, 2013, 11:34:05 PM
    Author     : Shan
--%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<% 
    String userID = session.getAttribute("userID").toString();
    Invoice invoice = new DBManager().getInvoice(userID);
    
%>

        
        <h1>Thank you for your buying</h1>
        <br>
        <h3>This is your invoice number <%=invoice.getInvoiceID()%> </h3>
        <br>
        <form action="myServlet" method="post">
            <input type="hidden" name="page" value="everythingisdone">
            <input type="submit" class="btn" name="submit" value="Go back to main menu">
        </form>
    </body>
</html>
