<%-- 
    Document   : Insumos_Registrar
    Created on : 30/05/2018, 09:21:33 AM
    Author     : adsi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
             <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
        <script src="JS/bootstrap-confirmation.min.js"></script>

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
   <title>Registrar Insumos</title>
    </head>
    <body>
         <%@include file="NavBar.jsp" %>
    <center>
        <h1>Registrar Insumos</h1>
    </center>
    <br><br>
    <form id="contactForm" method="POST" class="form-horizontal" action="Insertar_Insumos">

        <div class="form-group">
            <label class="col-md-3 control-label">Encargado Insumos</label>
            <div class="col-md-6">
                <input type="text" class="form-control" name="Encargado_insumos" placeholder="Nombre Proveedor">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3 control-label">Empresa Encargada</label>
            <div class="col-md-6">
                <input type="text" class="form-control" name="Empresa" placeholder="Nombre Empresa">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3 control-label">Fecha</label>
            <div class="col-md-6">
                <input type="date" class="form-control" name="Fecha">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3 control-label">Insumo</label>
            <div class="col-md-6">
                <input type="text" class="form-control" name="Insumo" placeholder="Nombre del Producto">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3 control-label">Cantidad</label>
            <div class="col-md-6">
                <input type="text" class="form-control" name="Cantidad_entregada" placeholder="Cantidad Recibida">
            </div>
        </div>
         
         <div class="form-group">
            <label class="col-md-3 control-label">Recibe</label>
            <div class="col-md-6">
                <input type="text" class="form-control" name="Recibe" placeholder="Nombre Trabajador">
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
