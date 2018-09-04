<%-- 
    Document   : index
    Created on : 13/04/2018, 10:17:16 AM
    Author     : adsi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link REL=StyleSheet HREF="style/css.css" TYPE="text/css" MEDIA=screen> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script> 
        <title>Index</title>
   
    </head>
    <body>
        <%@include file="NavBar.jsp" %>
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
