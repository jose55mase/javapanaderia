<%-- 
    Document   : Index
    Created on : 13/04/2018, 11:25:33 AM
    Author     : adsi2
--%>

<%@page import="Controlador.Users"%>
<%@page import="java.util.ArrayList"%>
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
          <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
    </head>
    <body>
        <%
            HttpSession c = request.getSession();

            ArrayList<Users> d = (ArrayList) c.getAttribute("lista");


        %>

        <%@include file="NavBar.jsp" %>



        <div class="container">
         <h2>Consultar Usuarios</h2>  

        <table class="table table-condensed">
            <thead>
                <tr>            
                    <th>User</th>
                    <th>Password</th>
                    <th>Rol</th>
                </tr>
            </thead>
            <tbody>
                <%   for (int i = 0; i < d.size(); i++) {%>

                <tr>
                    <td><%= ((Users) d.get(i)).getUser()%></td>
                    <td><%= ((Users) d.get(i)).getPassword()%></td>
                    <td><%= ((Users) d.get(i)).getRol()%></td>
                    <td><a type="button" class="btn btn-warning glyphicon glyphicon-pencil" data-toggle="modal" data-target="#myModal"  onclick="editar('<%= ((Users) d.get(i)).getId()%>', '<%= ((Users) d.get(i)).getUser()%>', '<%= ((Users) d.get(i)).getPassword()%>', '<%= ((Users) d.get(i)).getRol()%>')"></a>
                        <a data-toggle="confirmation"  class="btn btn-danger glyphicon glyphicon-remove" href="Eliminar_Usuario?Id=<%= ((Users) d.get(i)).getId()%> "data-toggle="confirmation"></a></td>



            <div class="container">
                
               <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">  
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Editar Usuario</h4>
                            </div>
                            <div class="modal-body">     
                                <form action="Editar_Usuario">
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Id</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="ID" id="ID" readonly="">
                                        </div>
                                    </div>    
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">User</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="User" id="User">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Password</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="Password"  id="Password">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Rol</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="Rol"  id="Rol">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-9 col-md-offset-3">
                                            <div id="messages"></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-9 col-md-offset-3">
                                            <button type="submit" class="btn btn-success">Editar</button>
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                        </div>
                                    </div>         
                                    <div class="modal-footer">

                                    </div>
                                </form>
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
                    function editar(id, user, pas, rol, ) {
                            document.getElementById('ID').value = id;
                            document.getElementById('User').value = user;
                            document.getElementById('Password').value = pas;
                            document.getElementById('Rol').value = rol;
                    }
                  

        </script>
</body>
</html>
