<%-- 
    Document   : NavBar
    Created on : 13/04/2018, 10:22:11 AM
    Author     : adsi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link REL=StyleSheet HREF="style/css.css" TYPE="text/css" MEDIA=screen> 
           <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
        <title></title>
    </head>
    <body>

        <%
            HttpSession us = request.getSession();

            String a = (String) us.getAttribute("i");
            String b = (String) us.getAttribute("rol");

            if (b.equals("Invitado")) {


        %>
        <div class="nav"> 
            <center>
                <img src="Imagenes/Banner.jpg" id="Banner" width="630px">
            </center>
            <nav class="navbar navbar-light" style="background-color: #f7d77a;" >
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="">LA CROCANTE</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index_logueado.jsp">Inicio</a></li>
                        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="">Pan<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="Listar_Pan">Consultar Pan</a></li>                      
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=a%></a></li>          
                    </ul>
                </div>
            </nav>
        </div> 
            <% } else if (b.equals("administrador_panaderia")) { %>
                 <div class="nav"> 
            <center>
           <img src="Imagenes/Banner.jpg" id="Banner" width="630px">
           </center>
        <nav class="navbar navbar-light" style="background-color: #f7d77a;" >
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="">LA CROCANTE</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index_logueado.jsp">Inicio</a></li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="">Pan<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="Pan_Registrar.jsp">Registrar Pan</a></li>
                            <li><a href="Listar_Pan">Consultar Pan</a></li>                      
                        </ul>
                    </li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Usuarios <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="Usuario_Registrar.jsp">Registrar Usuario</a></li>
                            <li><a href="Listar_Usuario">Consultar Usuario</a></li>                      
                        </ul>
                    </li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Insumos<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="Insumos_Registrar.jsp">Registrar Insumos</a></li>
                            <li><a href="Listar_Insumos">Consultar Insumos</a></li>                      
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=b%></a></li>          
                </ul>
            </div>
        </nav>
</div>  
            <% } %>
    </body>
</html>
