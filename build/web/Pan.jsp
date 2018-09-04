<%-- 
    Document   : Pan_Listar
    Created on : 27/04/2018, 11:50:35 AM
    Author     : adsi2
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Controlador.Panes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
   <head>
             <title>Consulta de Panes</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
        <script src="JS/bootstrap-confirmation.min.js"></script>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>         
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
    </head>
    <body>
            <%
                HttpSession n = request.getSession();

                ArrayList<Panes> v = (ArrayList) n.getAttribute("lista");

            %>
            
            <%@include file="NavBar.jsp" %>
       

          <div class="container">
  <h2>Consultar Pan</h2>   
        <table class="table table-condensed">
            <thead>
                <tr>     
                    <th>Nombre</th>
                    <th>Imagen</th>  
                    <th>Opciones</th>
                </tr>
            </thead>
            <tbody>
                <%   for (int i = 0; i < v.size(); i++) {%>

                <tr>   
                    <td><%= ((Panes) v.get(i)).getNombre()%></td>
                    <td><img src="Imagenes/<%= ((Panes) v.get(i)).getImagen()%>" class="thumbnail" width="100" height="100" />
                    <% if (b.equals("administrador")) {%>
                   <td> <a type="button" class="btn btn-info glyphicon glyphicon-eye-open"  data-toggle="modal" data-target="#myModal"  onclick="ver('<%= ((Panes) v.get(i)).getId()%>', '<%= ((Panes) v.get(i)).getNombre()%>', '<%= ((Panes) v.get(i)).getPeso()%>', '<%= ((Panes) v.get(i)).getCategoria()%>', '<%= ((Panes) v.get(i)).getCantidadPorciones()%>')"></a>
                        <a type="button" class="btn btn-warning glyphicon glyphicon-pencil" data-toggle="modal" data-target="#myModal1"  onclick="editar('<%= ((Panes) v.get(i)).getId()%>', '<%= ((Panes) v.get(i)).getNombre()%>', '<%= ((Panes) v.get(i)).getPeso()%>', '<%= ((Panes) v.get(i)).getCategoria()%>', ' <%= ((Panes) v.get(i)).getImagen()%>', '<%= ((Panes) v.get(i)).getCantidadPorciones()%>')"></a>    
                        <a data-toggle="confirmation" class="btn btn-danger glyphicon glyphicon-remove" href="Eliminar_Pan?Id=<%= ((Panes) v.get(i)).getId()%>"></a>
                   </td>
                   <% } else if (b.equals("Invitado")) {%>
                   <td> <a type="button" class="btn btn-info glyphicon glyphicon-eye-open"  data-toggle="modal" data-target="#myModal"  onclick="ver('<%= ((Panes) v.get(i)).getId()%>', '<%= ((Panes) v.get(i)).getNombre()%>', '<%= ((Panes) v.get(i)).getPeso()%>', '<%= ((Panes) v.get(i)).getCategoria()%>', '<%= ((Panes) v.get(i)).getCantidadPorciones()%>')"></a></td>
                   <%}%>
                    <!-- Modal Ver -->
            <div class="container">
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">  
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Ver Producto</h4>
                            </div>
                            <div class="modal-body"> 
                                <div class="container">
                                     <form action="Editar_Pan">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Id</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="Id" id="Id1" readonly="">
                                            </div>
                                        </div>
                                         <div class="form-group">
                                            <label class="col-md-4 control-label">Nombre</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="Nombre" id="Nombre1" readonly="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Peso</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="Peso" id="Peso1" readonly="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Categoria</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="Categoria" id="Categoria1" readonly="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Cantidad</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="Cantidad" id="Cantidad1" readonly="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-9 col-md-offset-3">
                                                <div id="messages"></div>
                                            </div>
                                        </div>      
                                    </form>
                                </div>
                            </div>
                             <div class="modal-footer">
                                    <div class="col-md-9 col-md-offset-2">  
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                    </div>  
                              </div>

                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal Editar -->



            <div class="container">
                <div class="modal fade" id="myModal1" role="dialog">
                    <div class="modal-dialog">  
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Editar Pan</h4>
                            </div>
                            <div class="modal-body">   
                                <div class="container">
                                <form action="Editar_Pan">

                                    <div class="form-group">

                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Id</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="Id" id="Id" readonly="">
                                            </div>
                                            <label class="col-md-4 control-label">Nombre</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="Nombre" id="Nombre" >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Peso</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="Peso" id="Peso">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Categoria</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="Categoria" id="Categoria">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Imagen</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="Imagen" id="Imagen">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Cantidad</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" name="Cantidad_Porciones" id="Cantidad_Porciones">
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <div class="col-md-9 col-md-offset-3">
                                                <div id="messages"></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-9 col-md-offset-2">
                                                <br>
                                                <button type="submit" class="btn btn-success">Enviar</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                            </div>
                                        </div>         
                                        <div class="modal-footer">

                                        </div>
                                    </div>
                                </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            </tr>

            <% }%>
            </tbody>
        </table>         
    </div>
    <%@include file="Footer.jsp" %> 
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
        $(function(){
           $(".thumbnail").mouseenter(function(){
              $(this).css("height","200px"); 
              $(this).css("width","200px");              
           });
           $(".thumbnail").mouseout(function(){
               $(this).css("width","100px");
               $(this).css("height","100px"); 
           })
        });
        
        $(function() {
                $('body').confirmation({
                    selector: '[data-toggle="confirmation"]'
                    });
                            $('.confirmation-callback').confirmation({
                    onConfirm: function(event, element) {
                    alert('confirm')
                    },
                            onCancel: function(event, element) {
                            alert('cancel')
                            }
                    });
                    });
                    //editar
                            function editar(id, nom, peso, cate, img, cant, ) {
                            document.getElementById('Id').value = id;
                                    document.getElementById('Nombre').value =nom ;
                                    document.getElementById('Peso').value = peso;
                                    document.getElementById('Categoria').value = cate;
                                    document.getElementById('Imagen').value = img;
                                    document.getElementById('Cantidad_Porciones').value = cant;
                            }
                    //ver
                    function ver(id, nom, peso, cate, cant, ) {
                    document.getElementById('Id1').value = id;
                            document.getElementById('Nombre1').value = nom;
                            document.getElementById('Peso1').value = peso;
                            document.getElementById('Categoria1').value = cate;
                            document.getElementById('Cantidad1').value = cant;
                    }
    </script>
    
    </body>
</html>



