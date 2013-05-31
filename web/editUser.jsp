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
        <title>Edit user</title>
    </head>
    <body>
        <h1>Edit data for "<%= request.getSession(false).getAttribute("username")%>"</h1>

        <form action="myServlet" method="POST" name="editForm">
            <input type="hidden" value="editUser" name="page">

            <table style="border-collapse: collapse; width: 320px">
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" style="width: 100%"></td>
                </tr>
                <tr>
                    <td>Full Name:</td>
                    <td><input type="text" name="name" style="width: 100%"></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address" style="width: 100%"></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="email" style="width: 100%"></td>
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
