package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class modal_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"StyleSheet\" type=\"text/css\" href=\"CSS/Bootstrap.css\" />\n");
      out.write("\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <a data-toggle=\"modal\" href=\"#myModal\" class=\"btn btn-primary btn-large\">Launch demo modal</a>\n");
      out.write("        <div id=\"myModal\" class=\"modal hide fade\" style=\"display: none; \">\n");
      out.write("            <div class=\"modal-header\">\n");
      out.write("                <button class=\"close\" data-dismiss=\"modal\">×</button>\n");
      out.write("                <h3>Modal Heading</h3>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"modal-body\">\n");
      out.write("                <h4>Text in a modal</h4>\n");
      out.write("                <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem.</p>\n");
      out.write("\n");
      out.write("                <h4>Popover in a modal</h4>\n");
      out.write("                <p>This <a href=\"#\" class=\"btn popover-test\" data-content=\"And here's some amazing content. It's very engaging. right?\" data-original-title=\"A Title\">button</a> should trigger a popover on hover.</p>\n");
      out.write("\n");
      out.write("                <h4>Tooltips in a modal</h4>\n");
      out.write("                <p><a href=\"#\" class=\"tooltip-test\" data-original-title=\"Tooltip\">This link</a> and <a href=\"#\" class=\"tooltip-test\" data-original-title=\"Tooltip\">that link</a> should have tooltips on hover.</p>\n");
      out.write("\n");
      out.write("                <hr>\n");
      out.write("\n");
      out.write("                <h4>Overflowing text to show optional scrollbar</h4>\n");
      out.write("                <p>We set a fixed <code>max-height</code> on the <code>.modal-body</code>. Watch it overflow with all this extra lorem ipsum text we've included.</p>\n");
      out.write("                <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\n");
      out.write("                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n");
      out.write("                <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>\n");
      out.write("                <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\n");
      out.write("                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n");
      out.write("                <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"modal-footer\">\n");
      out.write("                <a href=\"#\" class=\"btn\" data-dismiss=\"modal\">Close</a>\n");
      out.write("                <a href=\"#\" class=\"btn btn-primary\">Save changes</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- SCRIPT !!!  -->\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "js/jquery.js", out, false);
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "js/bootstrap.js", out, false);
      out.write("\n");
      out.write("        </script>        \n");
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
