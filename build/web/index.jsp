<%-- 
    Document   : index
    Created on : 4/05/2018, 11:47:08 AM
    Author     : adsi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link REL=StyleSheet HREF="style/css.css" TYPE="text/css" MEDIA=screen> 
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script> 

        <title>JSP Page</title>
    </head>
    <body>
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
                        <li class="active"><a href="index.jsp">Inicio</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">
                        <div type="button"  data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-user"></span>Registrarse</div>
                        <div class="modal fade" id="myModal1" role="dialog"  >
                            <div class="modal-body"> 
                                <div class="container">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>   
                                    <h4 class="modal-title">Registro</h4> 
                                    <form action="Insertar_Usuario" >
                                       <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                    <input type="text" class="form-control" name="User" placeholder="Usuario">
                                                </div>
                                                <br>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                    <input type="text" class="form-control" name="Password" placeholder="Contraseña">
                                                </div>
                                                <br>
                                        <div>
                                                    <input type="hidden" class="form-control" name="Rol" value="Invitado">
                                                </div>
                                                <br>
                                        <div class="form-group">
                                            <div class="col-md-9 col-md-offset-3">
                                                <div id="messages"></div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-9 col-md-offset-3">
                                                <button type="submit" class="btn btn-success">Enviar</button>
                                            </div>
                                        </div> 



                                    </form>
                                </div>
                            </div>
                        </div>
                        </a></li>
                        
                        <li><a href="#">
                                <div type="button"  data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Iniciar Sesion</div>
                                <div class="modal fade" id="myModal" role="dialog"  >
                                    <div class="modal-body">
                                        <div class="container">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Iniciar Sesion</h4>
                                            <form action="Autenticar" >
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                    <input type="text" class="form-control" name="email" placeholder="Usuario">
                                                </div>
                                                <br>
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                    <input type="password" class="form-control" name="pass" placeholder="Password">
                                                </div>
                                                <br>
                                                <input type="submit" value="Ingresar" class="btn btn-default">
                                                <input type="reset"  value="Reestablecer" class="btn btn-default">
                                            </form>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>     
                                </div>
                            </a><li>
                    </ul>
                </div>
            </nav>
        </div>   
    <center>          
        <div id="myCarousel" class="carousel slide" data-ride="carousel" >
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->

            <div class="carousel-inner">
                <div class="item">
                    <img src="Imagenes/pancitos.jpg" alt="New York" style="width:50%;">
                    <div class="carousel-caption">
                        <h3>De dulce</h3>
                        <p>Antojate de este maravilloso pan!</p>
                    </div>
                </div>

                <div class="item">
                    <img src="Imagenes/panleche.jpg" alt="New York" style="width:50%;">
                    <div class="carousel-caption">
                        <h3>De dulce</h3>
                        <p>Antojate de este maravilloso pan!</p>
                    </div>
                </div>

                <div class="item active">
                    <img src="Imagenes/Pan.jpg" alt="Integral" style="width:50%; height: 50%;">
                    <div class="carousel-caption">
                        <h3>Integral</h3>
                        <p>Siempre con su delicioso sabor!</p>
                    </div>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Atras</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Siguiente</span>
            </a>
        </div>
    </center>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <%@include file="Footer.jsp" %>
</body>
</html>
