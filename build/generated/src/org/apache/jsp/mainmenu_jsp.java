package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Objects.ProductInCart;
import Objects.DBManager;
import Objects.Product;
import java.util.ArrayList;

public final class mainmenu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Product Catalog</title>\n");
      out.write("\n");
      out.write("        <!-- CSS -->\n");
      out.write("        <link rel=\"StyleSheet\" type=\"text/css\" href=\"CSS/main-nav-bar.css\">\n");
      out.write("        <link rel=\"StyleSheet\" type=\"text/css\" href=\"CSS/Bootstrap.css\">\n");
      out.write("        <link rel=\"StyleSheet\" type=\"text/css\" href=\"CSS/shelf.css\">\n");
      out.write("    </head>\n");
      out.write("    <body class=\"container\">\n");
      out.write("        <!--        main navigation menu-->\n");
      out.write("        <div class=\"navbar\">\n");
      out.write("            <div class=\"navbar-inner\">\n");
      out.write("                <div class=\"container\" style=\"width: auto;\">\n");
      out.write("                    <a class=\"brand\" href=\"shelf.jsp\">IT Store</a>\n");
      out.write("                    <ul class=\"nav\" role=\"navigation\">\n");
      out.write("                        <li class=\"dropdown\">\n");
      out.write("                            <a id=\"drop1\" href=\"#\" role=\"button\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Hardware <b class=\"caret\"></b></a>\n");
      out.write("                            <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"drop1\">\n");
      out.write("                                <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"http://google.com\">Processors</a></li>\n");
      out.write("                                <li role=\"presentation\" class=\"divider\"></li>\n");
      out.write("                                <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"#anotherAction\">Mother Board</a></li>\n");
      out.write("                                <li role=\"presentation\" class=\"divider\"></li>\n");
      out.write("                                <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"#\">Hard Disk</a></li>\n");
      out.write("                                <li role=\"presentation\" class=\"divider\"></li>\n");
      out.write("                                <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"#\">VGA Card</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"dropdown\">\n");
      out.write("                            <a href=\"#\" id=\"drop2\" role=\"button\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Software <b class=\"caret\"></b></a>\n");
      out.write("                            <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"drop2\">\n");
      out.write("                                <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"#\">Game</a></li>\n");
      out.write("                                <li role=\"presentation\" class=\"divider\"></li>\n");
      out.write("                                <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"#\">Video and Photo</a></li>\n");
      out.write("                                <li role=\"presentation\" class=\"divider\"></li>\n");
      out.write("                                <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"#\">Anti virus</a></li>\n");
      out.write("                                <li role=\"presentation\" class=\"divider\"></li>\n");
      out.write("                                <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"#\">Others</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"nav pull-right\">\n");
      out.write("                        <li id=\"fat-menu\" class=\"dropdown\">\n");
      out.write("                            <div class=\"row header-margin-top\">\n");
      out.write("                                ");

                                    ArrayList<ProductInCart> cart = (ArrayList<ProductInCart>) request.getSession(false).getAttribute("cart");

                                    out.println("<div class=\"span3\">");
                                    out.println("Items in cart: " + cart.size());
                                    out.println("<a href=\"checkout.jsp\">Check out</a>");
                                    out.println("</div>");
                                
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
