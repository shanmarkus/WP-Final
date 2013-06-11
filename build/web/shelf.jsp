<%--
    Document   : shelf
    Created on : Apr 11, 2013, 4:07:30 PM
    Author     : Jason
--%>

<%@ include file="header.jsp" %>

<!--        Main Container-->
<div class="row">
    <div class="span3">
        <h4 class="span12">Hello <%= session.getAttribute("name")%>!</h4>
    </div>
    <div class="span3 offset6"> 
        <%
    ArrayList<ProductInCart> cart = (ArrayList<ProductInCart>) request.getSession(false).getAttribute("cart");
    out.println("Items in cart: " + cart.size());
    out.println("<a href=\"checkout.jsp\">Check out</a>");
        %> 
    </div>

</div>

<div>
    <div class="span12 marginTop">
        <%
            String category = (session.getAttribute("category").toString());
            String subcategory = (session.getAttribute("subcategory").toString());   
            out.println(category);
            out.println(subcategory);
//            ArrayList<Product> products = new DBManager().getAllProducts();
            ArrayList<Product> products = new DBManager().getAllSpesificProducts(category,subcategory);
//            out.println(products.size());
           
            for (Product p : products) {
                Integer tempStock = p.getStock();
                if(tempStock != 0){
                    out.println("<div class=\"row\">");
                    out.println("<div class=\"accordion\" id=\"accordion2\">");
                        out.println("<div class=\"accordion-group\">");
                        out.println("<div class=\"row\">");
                        
                            out.println("<div class=\"span5\">");
                                out.println("<div class=\"span6\">");
                                //please resize to max width and max height
                                   out.println("<img class=\"imageWrapper\" src=\"" + p.getPictureURL() + "\">");
                                out.println("</div>");
                            out.println("</div>");
                        
                            out.println("<div class=\"span4\">");
                                out.println("<div class=\"accordion-heading\">");
                                    out.println("<a class=\"accordion-toggle\" data-toggle=\"collapse\" data-parent=\"#accordion2\" href=\"#" + p.getProductID()+ "\">");
                                    out.print(p.getName());
                                    out.print("</a>");
                                    out.println("Price: " + p.getPrice());
                                out.println("</div>");
                            out.println("</div>");
                            
                            out.println("<div class=\"span2\">");
                                out.println("<form action=\"myServlet\" method=\"POST\">");
                                   out.println("<input type=\"hidden\" name=\"productID\" value=\"" + p.getProductID() + "\">");
                                   out.println("<input type=\"hidden\" name=\"page\" value=\"buy\">");
                                   out.println("<div class=\"input-append\">");
                                   out.println("<input type=\"text\" name=\"amount\" class=\"input-medium\">");
                                   out.println("<input type=\"submit\" class=\"btn\" value=\"Buy\">");
                                   out.println("</div>");
                                out.println("</form>");
                            out.println("</div>");
                            
                        out.println("</div>");
                            
                            //accordion body
                            out.println("<div class=\"accordion-body collapse\" id=\"" + p.getProductID()+ "\">");
                                out.println("<div class=\"accordion-inner\">");
                                out.println("<div class=\row\">");

                                   out.println("<div class=\"span12\">");
                                   out.println("<div class=\"row\">");
                                   out.println("Description: " + p.getDescription() + "<br />");
                                   out.println("</div>");
                                   out.println("</div>");
                                           
                                out.println("</div>");
                                out.println("</div>");
                            out.println("</div>");
                        out.println("</div>");
                    out.println("</div>");
                out.println("</div>");
                }
                else{
                    out.println("<div class=\"row\">");
                    out.println("<div class=\"accordion\" id=\"accordion2\">");
                        out.println("<div class=\"accordion-group\">");
                        out.println("<div class=\"row\">");
                        
                            out.println("<div class=\"span5\">");
                                   out.println("<img src=\"" + p.getPictureURL() + "\" height=\"20%\">");
                            out.println("</div>");
                        
                            out.println("<div class=\"span4\">");
                                out.println("<div class=\"accordion-heading\">");
                                    out.println("<a class=\"accordion-toggle\" data-toggle=\"collapse\" data-parent=\"#accordion2\" href=\"#" + p.getProductID()+ "\">");
                                    out.print(p.getName());
                                    out.print("</a>");
                                    out.println("Price: " + p.getPrice());
                                out.println("</div>");
                            out.println("</div>");
                            
                            out.println("<div class=\"span2\">");
                                out.println("Out Of Stock");
                            out.println("</div>");
                            
                        out.println("</div>");
                            
                            //accordion body
                            out.println("<div class=\"accordion-body collapse\" id=\"" + p.getProductID()+ "\">");
                                out.println("<div class=\"accordion-inner\">");
                                out.println("<div class=\row\">");

                                   out.println("<div class=\"span12\">");
                                   out.println("<div class=\"row\">");
                                   out.println("Description: " + p.getDescription() + "<br />");
                                   out.println("</div>");
                                   out.println("</div>");
                                           
                                out.println("</div>");
                                out.println("</div>");
                            out.println("</div>");
                        out.println("</div>");
                    out.println("</div>");
                out.println("</div>");
                }
            }
        %>
    </div>





</div>


<%@ include file="footer.jsp" %>