<%-- 
    Document   : editStock
    Created on : May 31, 2013, 5:20:27 PM
    Author     : Shan
--%>

<%-- 
    Document   : editUser
    Created on : Apr 5, 2013, 11:17:48 PM
    Author     : Jason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Stock Item</title>
    </head>
    <body>
        <h1>Edit data for "<%= request.getSession(false).getAttribute("productName")%>"</h1>

        <form action="myServlet" method="POST" name="editForm">
            <input type="hidden" value="editStock" name="page">

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

