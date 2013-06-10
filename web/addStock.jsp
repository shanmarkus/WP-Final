<%-- 
    Document   : addStock
    Created on : Jun 1, 2013, 6:08:54 PM
    Author     : Shan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@ include file="headerAdmin.jsp" %>
    <form action="myServlet" method="POST">
            <input type="hidden" value="addStock" name="page" enctype="multipart/form-data">
            <table style="border-collapse: collapse; width: 320px">
                <tr>
                    <td>Category:</td>
                    <td><input type="text" name="category" style="width: 100%"></td>
                </tr>
                <tr>
                    <td>Sub Category:</td>
                    <td><input type="text" name="subcategory" style="width: 100%"></td>
                </tr>
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
                    <td><input type="file" name="pictureURL" style="width: 100%"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save" style="width: 100%; display: block">
                    </td>
                </tr>
            </table>
        </form>
</html>
