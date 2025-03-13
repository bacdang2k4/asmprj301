package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/styleindex.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"footer-content\">\n");
      out.write("                    <div class=\"footer-logo\">\n");
      out.write("                        <img src=\"images/logo.png\" alt=\"PlaySoccerNow Logo\">\n");
      out.write("                        <span>PlaySoccerNow</span>\n");
      out.write("                        <p>The easiest way to find and book soccer fields.</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"footer-links\">\n");
      out.write("                        <h3>Quick Links</h3>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                            <li><a href=\"about.jsp\">About Us</a></li>\n");
      out.write("                            <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"footer-links\">\n");
      out.write("                        <h3>For Users</h3>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                            <li><a href=\"register.jsp\">Register</a></li>\n");
      out.write("                            <li><a href=\"how-to-book.jsp\">How to Book</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"footer-links\">\n");
      out.write("                        <h3>For Field Owners</h3>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"owner-register.jsp\">Register as Owner</a></li>\n");
      out.write("                            <li><a href=\"owner-guide.jsp\">Owner Guide</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"footer-contact\">\n");
      out.write("                        <h3>Contact Us</h3>\n");
      out.write("                        <p><i class=\"fas fa-envelope\"></i> info@playsoccernow.com</p>\n");
      out.write("                        <p><i class=\"fas fa-phone\"></i> +1 (123) 456-7890</p>\n");
      out.write("                        <div class=\"social-links\">\n");
      out.write("                            <a href=\"https://www.facebook.com/su.pin.3950/\"><i class=\"fab fa-facebook-f\"></i></a>\n");
      out.write("                            <a href=\"#\"><i class=\"fab fa-twitter\"></i></a>\n");
      out.write("                            <a href=\"#\"><i class=\"fab fa-instagram\"></i></a>\n");
      out.write("                            <a href=\"#\"><i class=\"fab fa-linkedin-in\"></i></a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"footer-bottom\">\n");
      out.write("                    <p>&copy; 2025 PlaySoccerNow. All rights reserved.</p>\n");
      out.write("                    <div class=\"footer-bottom-links\">\n");
      out.write("                        <a href=\"terms.jsp\">Terms of Service</a>\n");
      out.write("                        <a href=\"privacy.jsp\">Privacy Policy</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
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
