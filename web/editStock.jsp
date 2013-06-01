<%-- 
    Document   : editStock
    Created on : May 31, 2013, 5:20:27 PM
    Author     : Shan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="headerAdmin.jsp" %>

    <body>
        <h1>Edit data for "<%= session.getAttribute("name")%>"</h1>
        <%= session.getAttribute("productID")%>
        <form action="myServlet" method="POST">
            <input type="hidden" value="editStock" name="page">
            <input type="hidden" name="productID" value="<%= session.getAttribute("productID")%>">

            <table style="border-collapse: collapse; width: 320px">
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" style="width: 100%"></td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td><input type="text" name="description" style="width: 100%"></td>
                </tr>
                <tr>
                    <td>Stock:</td>
                    <td><input type="text" name="stock" style="width: 100%"></td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td><input type="text" name="price" style="width: 100%"></td>
                </tr>
                <tr>
                    <td>Picture Url:</td>
                    <td><input type="text" name="pictureURL" style="width: 100%"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save" style="width: 100%; display: block">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

