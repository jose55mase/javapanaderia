<%-- 
    Document   : Insumos
    Created on : 30/05/2018, 08:46:02 AM
    Author     : adsi2
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
                HttpSession n = request.getSession();

                ArrayList<Insumos> v = (ArrayList) n.getAttribute("lista");

            %>
        <%@include file="Navbar.jsp" %>
        
        <div class="container">
            <h2>Consultar Insumos</h2>
            <table class="table table-condensed">
                <thead>
                    <tr>
                        <th>Encargado de los Insumos</th>
                        <th>Fecha</th>
                        <th>Insumo</th>
                        <th>Cantidad entregada</th>
                        <th>Empresa encargada</th>
                        <th>Recibido Por:</th>
                    </tr>
                </thead> 
                <tbody>
                    <%   for (int i = 0; i < v.size(); i++) {%> 
                    
                    
                </tbody>
                
                
                
                
            </table>
            
            
            
        </div> 
    </body>
</html>
