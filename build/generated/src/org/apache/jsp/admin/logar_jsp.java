package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class logar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/admin/cabecalhologin.jsp");
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>Admin</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"mdl/material.min.css\">\n");
      out.write("        <script src=\"mdl/material.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"http://fonts.googleapis.com/css?family=Roboto:300,400,500,700\" type=\"text/css\">\n");
      out.write("        <link rel=\"shortcut icon\" href=\"Imagem/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("        <link rel=\"icon\" href=\"Imagem/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("        <script src=\"mdl/jquery-2.1.4.min.js\"></script>\n");
      out.write("\t<script src=\"mdl/jquery.maskedinput.min.js\"></script>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("       </head>\n");
      out.write("    \n");
      out.write("    <style>         \n");
      out.write("    .c1 {\n");
      out.write("    position:absolute;\n");
      out.write("    top:30%;\n");
      out.write("    left:60%;\n");
      out.write("    margin-top:-100px;\n");
      out.write("    margin-left:-300px;\n");
      out.write("    width: 360px;\n");
      out.write("    height: 200px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .c2{\n");
      out.write("    padding: 0px 18px;\n");
      out.write("    text-align: center;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .c3{\n");
      out.write("        text-align: right;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .c4{\n");
      out.write("        min-height: 10em;\n");
      out.write("        display: table-cell;\n");
      out.write("        vertical-align: middle;\n");
      out.write("        text-align: center;\n");
      out.write("        margin-left: auto;\n");
      out.write("        margin-right: auto;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .c5 {\n");
      out.write("    position:absolute;\n");
      out.write("    top:30%;\n");
      out.write("    left:42%;\n");
      out.write("    margin-top:-100px;\n");
      out.write("    margin-left:-300px;\n");
      out.write("    width: 360px;\n");
      out.write("    height: 200px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .c6 {\n");
      out.write("    position:absolute;\n");
      out.write("    top:40%;\n");
      out.write("    left:42%;\n");
      out.write("    margin-top:-100px;\n");
      out.write("    margin-left:-300px;\n");
      out.write("    width: 360px;\n");
      out.write("    height: 200px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .c7{\n");
      out.write("    position:absolute;\n");
      out.write("    top:30%;\n");
      out.write("    left:0%;\n");
      out.write("    margin-top:-100px;\n");
      out.write("    margin-left:auto;\n");
      out.write("    margin-right: auto;\n");
      out.write("    width: 360px;\n");
      out.write("    height: 200px;\n");
      out.write("    }\n");
      out.write("    .c8 {\n");
      out.write("    position:absolute;\n");
      out.write("    top:40%;\n");
      out.write("    left:40%;\n");
      out.write("    margin-top:-100px;\n");
      out.write("    margin-left:-300px;\n");
      out.write("    width: 360px;\n");
      out.write("    height: 200px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"mdl-layout mdl-js-layout mdl-layout- -fixed-header\">\n");
      out.write("            <header class=\"mdl-layout__header\">\n");
      out.write("                <div class=\"mdl-layout__header-row\">\n");
      out.write("                    <span class=\"mdl-layout-title\"><img src=\"\"></span>\n");
      out.write("                    <div class=\"mdl-layout-spacer\"></div>\n");
      out.write("               <!-- <nav class=\"mdl-navigation\">\n");
      out.write("                        <a class=\"mdl-button mdl-js-button mdl-button--icon\" href=\"index.jsp\"><i class=\"material-icons\">home</i></a>\n");
      out.write("                        <a class=\"mdl-button mdl-js-button mdl-button--icon\" href=\"cliente.jsp\"><i class=\"material-icons\">person_outline</i></a>\n");
      out.write("                        <a class=\"mdl-button mdl-js-button mdl-button--icon\" href=\"motorista.jsp\"><i class=\"material-icons\">local_taxi</i></a>\n");
      out.write("                        <a class=\"mdl-button mdl-js-button mdl-button--icon\" href=\"corrida.jsp\"><i class=\"material-icons\">traffic</i></a>\n");
      out.write("                    </nav>-->\n");
      out.write("                </div> \n");
      out.write("            </header>\n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"c1\">\n");
      out.write("            <div>\n");
      out.write("                <form action=\"login/indexlogado.jsp\" method=\"post\">\n");
      out.write("                    <div class=\"mdl-textfield mdl-js-textfield\">\n");
      out.write("                        <input class=\"mdl-textfield__input\" type=\"text\" id=\"txtUsuario\" name=\"txtUsuario\">\n");
      out.write("                    <label class=\"mdl-textfield__label\" for=\"txtNome\">Usuário...</label>\n");
      out.write("                    </div>\n");
      out.write("                      <div class=\"mdl-textfield mdl-js-textfield\">\n");
      out.write("                      <input class=\"mdl-textfield__input\" type=\"password\" id=\"txtSenha\" name=\"txtSenha\">\n");
      out.write("                      <label class=\"mdl-textfield__label\" for=\"txtSenha\">Senha...</label>\n");
      out.write("                    </div>\n");
      out.write("                    <br/>\n");
      out.write("                    <button class=\"mdl-button mdl-js-button mdl-js-ripple-effect\" type=\"submit\" value=\"Cadastrar\">Entrar</button>\n");
      out.write("                    <button class=\"mdl-button mdl-js-button mdl-js-ripple-effect\" type=\"reset\" value=\"Limpar\">Limpar</button>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
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
