<%-- 
    Document   : Pan_Registrar
    Created on : 27/04/2018, 10:08:36 AM
    Author     : adsi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
        <script src="JS/bootstrap-confirmation.min.js"></script>

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
      
        
        <title>Registrar Pan</title>
    </head>
    <body>
         <%@include file="NavBar.jsp" %>

    <center>
        <h2>Registrar Pan</h2>
    </center>
    <br><br>

    <form id="contactForm" method="POST" class="form-horizontal" action="Insertar_Pan">

        <div class="form-group">
            <label class="col-md-3 control-label">Nombre</label>
            <div class="col-md-6">
                <input type="text" class="form-control" name="Nombre">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3 control-label">Peso</label>
            <div class="col-md-6">
                <input type="text" class="form-control" name="Peso">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3 control-label">Cantidad Unidades</label>
            <div class="col-md-6">
                <input type="text" class="form-control" name="Cantidad_Porciones">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3 control-label">Categoria</label>
            <div class="col-md-6">
                <input type="text" class="form-control" name="Categoria">
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-9 col-md-offset-3">
            <input type="file" name="Imagen" multiple accept="image/*"  onchange="handleFiles(this.files)">                 
            </div>
        </div>
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

    <%@include file="Footer.jsp" %>
</body>
</html>
