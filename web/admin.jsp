<%-- 
    Document   : admin
    Created on : Apr 5, 2013, 5:31:34 PM
    Author     : Jason
--%>

<%@ include file="headerAdmin.jsp" %>
    <body>
        <%
            String name = request.getSession(false).getAttribute("name").toString();
        %>

        <h1>Hello <%= name%>!</h1>

        <table border="1">
            <tr>
                <td>Username</td>
                <td>Password</td>
                <td>Full name</td>
                <td>Email</td>
                <td>Command</td>
            </tr>

            <%
                try {
                    // Load the driver
                    Class.forName("com.mysql.jdbc.Driver").newInstance();

                    // Connect to MySQL
                    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/ITStore", "root", "");
                    Statement statement = connection.createStatement();

                    // Get the data from MySQL
                    ResultSet resultSet = statement.executeQuery("SELECT * FROM users;");
                    while (resultSet.next()) {
                        out.println("<tr>");
                        out.println("<td>" + resultSet.getString(3) + "</td>");
                        out.println("<td>" + resultSet.getString(4) + "</td>");
                        out.println("<td>" + resultSet.getString(5) + "</td>");
                        out.println("<td>" + resultSet.getString(6) + "</td>");
                        out.println("<td>");
                        out.println("<form action=\"myServlet\" method=\"POST\">");
                        out.println("<input type=\"hidden\" name=\"page\" value=\"admin\">");
                        out.println("<input type=\"hidden\" name=\"username\" value=\"" + resultSet.getString(3) + "\">");
                        out.println("<input type=\"hidden\" name=\"command\" value=\"edit\">");
                        out.println("<input type=\"submit\" value=\"Edit\">");
                        out.println("</form>");
                        out.println("<form action=\"myServlet\" method=\"POST\" onsubmit=\"return confirmation();\">");
                        out.println("<input type=\"hidden\" name=\"page\" value=\"admin\">");
                        out.println("<input type=\"hidden\" name=\"username\" value=\"" + resultSet.getString(3) + "\">");
                        out.println("<input type=\"hidden\" name=\"command\" value=\"delete\">");
                        out.println("<input type=\"submit\" value=\"Delete\">");
                        out.println("</form>");
                        out.println("</td>");
                        out.println("</tr>");
                    }

                    // Close the connection to MySQL
                    statement.close();
                    connection.close();
                } catch (SQLException ex) {
                    out.println(ex.toString());
                }
            %>
        </table>
        <strong>
             <a href="index.jsp">Go Back to Login Page</a>
        </strong>
    </body>
</html>
