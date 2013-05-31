<%-- 
    Document   : admin
    Created on : Apr 5, 2013, 5:31:34 PM
    Author     : Jason
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Objects.User"%>
<%@page import="Objects.DBManager"%>
<%@ include file="headerAdmin.jsp" %>
<body>
    <%
        String name = request.getSession(false).getAttribute("name").toString();
    %>

    <h1>Hello <%= name%>!</h1>
    <br>
    <h2>User Setting(s)</h2>
    <br>
    <table border="1">
        <thead>
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>Full name</th>
                <th>Address</th>
                <th>Email</th>
                <th>Command</th>
            </tr>
        </thead>
        <tbody>

        <%
            ArrayList<User> users = new DBManager().getAllUser();
           
                for(User u : users){
                   
                    out.println("<tr>");
                    out.println("<td>" + u.getUsername() + "</td>");
                    out.println("<td>" + u.getPassword() + "</td>");
                    out.println("<td>" + u.getName() + "</td>");
                    out.println("<td>" + u.getAddress() + "</td>");
                    out.println("<td>" + u.getEmail() + "</td>");
                    out.println("<td>");
                    out.println("<form action=\"myServlet\" method=\"POST\">");
                    out.println("<input type=\"hidden\" name=\"page\" value=\"admin\">");
                    out.println("<input type=\"hidden\" name=\"username\" value=\"" + u.getUsername() + "\">");
                    out.println("<input type=\"hidden\" name=\"command\" value=\"edit\">");
                    out.println("<input type=\"submit\" value=\"Edit\">");
                    out.println("</form>");
                    out.println("<form action=\"myServlet\" method=\"POST\" onsubmit=\"return confirmation();\">");
                    out.println("<input type=\"hidden\" name=\"page\" value=\"admin\">");
                    out.println("<input type=\"hidden\" name=\"username\" value=\"" + u.getUsername() + "\">");
                    out.println("<input type=\"hidden\" name=\"command\" value=\"delete\">");
                    out.println("<input type=\"submit\" value=\"Delete\">");
                    out.println("</form>");
                    out.println("</td>");
                    out.println("</tr>");
                }

        %>
        </tbody>
    </table>
    <strong>
        <a href="index.jsp">Go Back to Login Page</a>
    </strong>

    <%@ include file="footerAdmin.jsp" %>