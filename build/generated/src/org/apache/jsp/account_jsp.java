package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.BankApp.BankAppWeb;
import java.sql.*;

public final class account_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>BankApp Account</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color:#DADBE0;\">\n");
      out.write("        ");
      com.BankApp.BankAppWeb bankapp = null;
      synchronized (_jspx_page_context) {
        bankapp = (com.BankApp.BankAppWeb) _jspx_page_context.getAttribute("bankapp", PageContext.PAGE_SCOPE);
        if (bankapp == null){
          bankapp = new com.BankApp.BankAppWeb();
          _jspx_page_context.setAttribute("bankapp", bankapp, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("bankapp"), "username", request.getParameter("user"), request, "user", false);
      out.write("\n");
      out.write("        \n");
      out.write("        ");
 BankAppWeb bankapp1 = null;
            bankapp1 = bankapp.readFromDatabase();    
        
      out.write("\n");
      out.write("           \n");
      out.write("        <div align=\"center\">\n");
      out.write("            <h1>Welcome, ");
      out.print( bankapp1.username );
      out.write(", to your Account.</h1>\n");
      out.write("            <h2>You may view your Checking and Savings Amounts, and deposit or withdraw from your checking account.</h2>\n");
      out.write("            <h3>You may also transfer from your savings to your checking.</h3>\n");
      out.write("            <p> Checking Account Balance: ");
      out.print(bankapp1.checkingAmount );
      out.write("\n");
      out.write("            <br/>\n");
      out.write("            Savings Account Balance: ");
      out.print( bankapp1.savingsAmount );
      out.write("\n");
      out.write("            <br/></p>\n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("        <div align=\"center\"> \n");
      out.write("            <form action=\"withdrawFromChecking.jsp\" >\n");
      out.write("                I'd like to Withdraw From Checking. <input type=\"submit\" Value=\"Withdraw\" />\n");
      out.write("                <input type=\"hidden\" name=\"username\" value=\"");
      out.print( bankapp1.username );
      out.write("\" > \n");
      out.write("                <input type=\"hidden\" name=\"checkingAmount\" value=\"");
      out.print( bankapp1.checkingAmount );
      out.write("\" > \n");
      out.write("                <input type=\"hidden\" name=\"savingsAmount\" value=\"");
      out.print( bankapp1.savingsAmount );
      out.write("\" >\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
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
