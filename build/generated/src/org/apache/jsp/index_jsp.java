package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Footer.jsp");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link REL=StyleSheet HREF=\"style/css.css\" TYPE=\"text/css\" MEDIA=screen> \n");
      out.write("        <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <!-- Compiled and minified CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css\">\n");
      out.write("\n");
      out.write("        <!-- Compiled and minified JavaScript -->\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js\"></script> \n");
      out.write("\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"nav\"> \n");
      out.write("            <center>\n");
      out.write("                <img src=\"Imagenes/Banner.jpg\" id=\"Banner\" width=\"630px\">\n");
      out.write("            </center>\n");
      out.write("            <nav class=\"navbar navbar-light\" style=\"background-color: #f7d77a;\" >\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <div class=\"navbar-header\">\n");
      out.write("                        <a class=\"navbar-brand\" href=\"\">LA CROCANTE</a>\n");
      out.write("                    </div>\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li class=\"active\"><a href=\"index.jsp\">Inicio</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <li><a href=\"#\">\n");
      out.write("                        <div type=\"button\"  data-toggle=\"modal\" data-target=\"#myModal1\"><span class=\"glyphicon glyphicon-user\"></span>Registrarse</div>\n");
      out.write("                        <div class=\"modal fade\" id=\"myModal1\" role=\"dialog\"  >\n");
      out.write("                            <div class=\"modal-body\"> \n");
      out.write("                                <div class=\"container\">\n");
      out.write("                                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>   \n");
      out.write("                                    <h4 class=\"modal-title\">Registro</h4> \n");
      out.write("                                    <form action=\"Insertar_Usuario\" >\n");
      out.write("                                       <div class=\"input-group\">\n");
      out.write("                                                    <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-user\"></i></span>\n");
      out.write("                                                    <input type=\"text\" class=\"form-control\" name=\"User\" placeholder=\"Usuario\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <br>\n");
      out.write("                                        <div class=\"input-group\">\n");
      out.write("                                                    <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-lock\"></i></span>\n");
      out.write("                                                    <input type=\"text\" class=\"form-control\" name=\"Password\" placeholder=\"Contraseña\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <br>\n");
      out.write("                                        <div>\n");
      out.write("                                                    <input type=\"hidden\" class=\"form-control\" name=\"Rol\" value=\"Invitado\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <br>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <div class=\"col-md-9 col-md-offset-3\">\n");
      out.write("                                                <div id=\"messages\"></div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <div class=\"col-md-9 col-md-offset-3\">\n");
      out.write("                                                <button type=\"submit\" class=\"btn btn-success\">Enviar</button>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div> \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        </a></li>\n");
      out.write("                        \n");
      out.write("                        <li><a href=\"#\">\n");
      out.write("                                <div type=\"button\"  data-toggle=\"modal\" data-target=\"#myModal\"><span class=\"glyphicon glyphicon-log-in\"></span> Iniciar Sesion</div>\n");
      out.write("                                <div class=\"modal fade\" id=\"myModal\" role=\"dialog\"  >\n");
      out.write("                                    <div class=\"modal-body\">\n");
      out.write("                                        <div class=\"container\">\n");
      out.write("                                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                                            <h4 class=\"modal-title\">Iniciar Sesion</h4>\n");
      out.write("                                            <form action=\"Autenticar\" >\n");
      out.write("                                                <div class=\"input-group\">\n");
      out.write("                                                    <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-user\"></i></span>\n");
      out.write("                                                    <input type=\"text\" class=\"form-control\" name=\"email\" placeholder=\"Usuario\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <br>\n");
      out.write("                                                <div class=\"input-group\">\n");
      out.write("                                                    <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-lock\"></i></span>\n");
      out.write("                                                    <input type=\"password\" class=\"form-control\" name=\"pass\" placeholder=\"Password\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <br>\n");
      out.write("                                                <input type=\"submit\" value=\"Ingresar\" class=\"btn btn-default\">\n");
      out.write("                                                <input type=\"reset\"  value=\"Reestablecer\" class=\"btn btn-default\">\n");
      out.write("                                            </form>\n");
      out.write("                                            <div class=\"modal-footer\">\n");
      out.write("                                                <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>     \n");
      out.write("                                </div>\n");
      out.write("                            </a><li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </div>   \n");
      out.write("    <center>          \n");
      out.write("        <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\" >\n");
      out.write("            <!-- Indicators -->\n");
      out.write("            <ol class=\"carousel-indicators\">\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("            </ol>\n");
      out.write("\n");
      out.write("            <!-- Wrapper for slides -->\n");
      out.write("\n");
      out.write("            <div class=\"carousel-inner\">\n");
      out.write("                <div class=\"item\">\n");
      out.write("                    <img src=\"Imagenes/pancitos.jpg\" alt=\"New York\" style=\"width:50%;\">\n");
      out.write("                    <div class=\"carousel-caption\">\n");
      out.write("                        <h3>De dulce</h3>\n");
      out.write("                        <p>Antojate de este maravilloso pan!</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"item\">\n");
      out.write("                    <img src=\"Imagenes/panleche.jpg\" alt=\"New York\" style=\"width:50%;\">\n");
      out.write("                    <div class=\"carousel-caption\">\n");
      out.write("                        <h3>De dulce</h3>\n");
      out.write("                        <p>Antojate de este maravilloso pan!</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"item active\">\n");
      out.write("                    <img src=\"Imagenes/Pan.jpg\" alt=\"Integral\" style=\"width:50%; height: 50%;\">\n");
      out.write("                    <div class=\"carousel-caption\">\n");
      out.write("                        <h3>Integral</h3>\n");
      out.write("                        <p>Siempre con su delicioso sabor!</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Left and right controls -->\n");
      out.write("            <a class=\"left carousel-control\" href=\"#myCarousel\" data-slide=\"prev\">\n");
      out.write("                <span class=\"glyphicon glyphicon-chevron-left\"></span>\n");
      out.write("                <span class=\"sr-only\">Atras</span>\n");
      out.write("            </a>\n");
      out.write("            <a class=\"right carousel-control\" href=\"#myCarousel\" data-slide=\"next\">\n");
      out.write("                <span class=\"glyphicon glyphicon-chevron-right\"></span>\n");
      out.write("                <span class=\"sr-only\">Siguiente</span>\n");
      out.write("            </a>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link REL=StyleSheet HREF=\"style/css.css\" TYPE=\"text/css\" MEDIA=screen> \n");
      out.write("        <title>footer</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <footer class=\"footer\"  >\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"row\">   \n");
      out.write("                    <div class=\" ubcacion col-sm-6\">\n");
      out.write("                        <h3>Ubicanos</h3>\n");
      out.write("                        <iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.6588040673296!2d-75.58363078474427!3d6.17640994552846!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e468250a7a0e9f1%3A0x7fd806473cbd5d97!2sCancha+La+Paloma!5e0!3m2!1ses!2sco!4v1524057912466\" width=\"200\" height=\"150\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\n");
      out.write("                    </div>\n");
      out.write("                  \n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                        <h3 class=\"info\">Contactenos</h3>\n");
      out.write("                        <center>\n");
      out.write("                        <ul>\n");
      out.write("                            <li>Correo: La_crocante@gmail.com</li>\n");
      out.write("                            <li>Celular: +57 3218694156</li>\n");
      out.write("                            <li>Telefono: 5983604</li>\n");
      out.write("                        </ul>\n");
      out.write("                        </center>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("</body>\n");
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
