<%-- 
    Document   : index
    Created on : 9/10/2019, 10:19:19 AM
    Author     : aula8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@include file="WEB-INF/jspf/conexion.jspf" %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        
        <title>Sistema de Eventos</title>
    </head>
    <body>
        <h1><center>Sistema de Eventos</center></h1>
        <h2><center>Lista de Clientes</center></h2> <br><br><br> 
                <sql:query var="result" scope="request" dataSource="${universidad}">

            select * from cliente
            

        </sql:query>

            <table class="table table-borderd"> 
            <thead>
                <tr><th class="text-center">Documento</th>
                <th class="text-center">Nombre</th>
                <th class="text-center">Celular</th>
           
                    <th colspan="2">Acciones</th></tr>
            </thead> 

            <tbody>
                <c:forEach var="fila" items="${result.rows}">
            <tr>        
                <td class="text-center"><c:out value="${fila.documento}" /></td> 
                <td class="text-center" ><c:out value="${fila.nombre_cliente}" /></td>
                <td class="text-center"><c:out value="${fila.celular}" /></td>
            
                <td><a href="eliminarCliente.jsp?documento=${fila.documento}">
                        <input type="submit" value="eliminar" class="btn btn-danger"/></a></td>
                <td><a href="actualizarCliente.jsp?documento=${fila.documento}">
                        <input type="submit" value="Editar" class="btn btn-info"/></a></td>        

            </tr>
        </c:forEach>
    </tbody>
    
</table>
            <br>
            <a href="agregarCliente.jsp?id=${fila.id}"><center>
                    <input type="submit" value="Agregar cliente" class="btn btn-warning"/></center></a>
    <center> <a href="index.jsp?id=${fila.id}">Regresar</a></center> 
                
</body>
</html>
