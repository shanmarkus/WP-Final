<%-- 
    Document   : editProfile
    Created on : Jun 9, 2013, 8:19:05 PM
    Author     : Shan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jsp" %>

       <h1>Edit data for "<%= request.getSession(false).getAttribute("name")%>"</h1>

        <form action="myServlet" method="POST" name="editForm">
            <input type="hidden" value="editProfilePage" name="page">
            <input type="hidden" name="username" value="<%= session.getAttribute("username")%>">
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
        
        
<%@ include file="footer.jsp" %>