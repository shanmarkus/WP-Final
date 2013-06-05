<%-- 
    Document   : searchResultAdmin
    Created on : Jun 5, 2013, 7:18:41 PM
    Author     : Shan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="headerAdmin.jsp" %>
<body>

    <%
        String admin = "administrator";
        User user = new DBManager().getLoginUser(admin);
        String name = user.getName();
        String search = session.getAttribute("search").toString();
        
        if (session.getAttribute("searchtype").equals("user")) {
            ArrayList<User> users = new DBManager().searchSpesificUser(search + "%");
            for(User u : users){
                    out.println("<table border=1>");
                    out.println("<thead>");
                    out.println("<tr>");
                    
                    out.println("<th>");
                    out.println("Username");
                    out.println("</th>");
                    
                    out.println("<th>");
                    out.println("Password");
                    out.println("</th>");
                    
                    out.println("<th>");
                    out.println("Full name");
                    out.println("</th>");
                    
                    out.println("<th>");
                    out.println("Address");
                    out.println("</th>");
                    
                    out.println("<th>");
                    out.println("Email");
                    out.println("</th>");
                    
                    out.println("<th>");
                    out.println("Command");
                    out.println("</th>");
                    
                    out.println("</tr>");
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
                    out.println("</tbody>");
                    out.println("</table>");
                }
        } else {
            ArrayList<Product> products = new DBManager().searchSpesificProducts(search + "%");
            for (Product p : products) {
                    out.println("<table border=1>");
                    out.println("<thead>");
                    out.println("<tr>");
                    
                    out.println("<th>");
                    out.println("Category");
                    out.println("</th>");
                    
                    out.println("<th>");
                    out.println("Sub Category");
                    out.println("</th>");
                    
                    out.println("<th>");
                    out.println("Name");
                    out.println("</th>");
                    
                    out.println("<th>");
                    out.println("Description");
                    out.println("</th>");
                    
                    out.println("<th>");
                    out.println("Stock");
                    out.println("</th>");
                    
                    out.println("<th>");
                    out.println("Price");
                    out.println("</th>");
                    
                    out.println("<th>");
                    out.println("Picture URL");
                    out.println("</th>");
                    
                    out.println("<th>");
                    out.println("Command");
                    out.println("</th>");
                    
                    out.println("</tr>");
                    out.println("<tr>");
                    out.println("<td>" + p.getCategory() + "</td>");
                    out.println("<td>" + p.getSubcategory() + "</td>");
                    out.println("<td>" + p.getName()+ "</td>");
                    out.println("<td>" + p.getDescription() + "</td>");
                    out.println("<td>" + p.getStock() + "</td>");
                    out.println("<td>" + p.getPrice() + "</td>");
                    out.println("<td>" + p.getPictureURL() + "</td>");
                    out.println("<td>");
                    out.println("<form action=\"myServlet\" method=\"POST\">");
                    out.println("<input type=\"hidden\" name=\"page\" value=\"adminstock\">");
                    out.println("<input type=\"hidden\" name=\"productID\" value=\"" + p.getProductID() + "\">");
                    out.println("<input type=\"hidden\" name=\"name\" value=\"" + p.getName()+ "\">");
                    out.println("<input type=\"hidden\" name=\"command\" value=\"edit\">");
                    out.println("<input type=\"submit\" value=\"Edit\">");
                    out.println("</form>");
                    out.println("<form action=\"myServlet\" method=\"POST\" onsubmit=\"return confirmation();\">");
                    out.println("<input type=\"hidden\" name=\"page\" value=\"adminstock\">");
                    out.println("<input type=\"hidden\" name=\"productID\" value=\"" + p.getProductID() + "\">");
                    out.println("<input type=\"hidden\" name=\"command\" value=\"delete\">");
                    out.println("<input type=\"submit\" value=\"Delete\">");
                    out.println("</form>");
                    out.println("</td>");
                    out.println("</tr>");
                    out.println("</tbody>");
                    out.println("</table>");
        }
        }


//        String name = request.getSession(false).getAttribute("name").toString();
    %>


    <strong>
        <a href="index.jsp">Go Back to Login Page</a>
    </strong>

    <%@ include file="footerAdmin.jsp" %>