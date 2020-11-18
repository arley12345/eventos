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
        <h2><center>Lista de los Productos</center></h2>
                <sql:query var="result" scope="request" dataSource="${universidad}">

            select productos.nombre, productos.cantidad, categoria.cat_nombre , estado.est_nombre
            , proveedores.prove_nombre 

            from productos
            join categoria
            on productos.categoria_id=categoria.id
            join estado
            on productos.estado_id=estado.id
            join proveedores
            on productos.proveedores_id=proveedores.id

        </sql:query>

        <a  href="agregarProducto.jsp?id=${fila.id}"> <center>
                <input type="submit" value="Agregar Producto"  maxlength="50" class="btn btn-primary" /></center></a> <br><br>


        <table class="table table-borderd"> 
            <thead>
                <tr><th class="text-center">Nombre</th>
                    <th class="text-center">Cantidad</th>
                    <th class="text-center">Categoria</th>
                    <th class="text-center">Estado</th>
                    <th class="text-center">proveedor</th>

                    <th colspan="2">Acciones</th></tr>
            </thead> 

            <tbody>
                <c:forEach var="fila" items="${result.rows}">
                    <tr>        
                        <td class="text-center"><c:out value="${fila.nombre}" /></td> 
                        <td class="text-center"><c:out value="${fila.cantidad}" /></td>     
                        <td class="text-center"><c:out value="${fila.cat_nombre}"/></td>
                        <td class="text-center"><c:out value="${fila.est_nombre}"/></td>
                        <td class="text-center"><c:out value="${fila.prove_nombre}" /></td> 

                        <td><a href="eliminrarProducto.jsp?id=${fila.id}">
                                <input type="submit" value="eliminar" class="btn btn-danger"/></a></td>
                             

                    </tr>
                </c:forEach>
            </tbody>

        </table>
        <br>
    <center>
        <a href="listarCategoria.jsp?id=${fila.id}">
            <input type="submit" value="Categorias" class="btn btn-warning" /></a>

        <a href="listarProveedores.jsp?id=${fila.id}">
            <input type="submit" value="Proveedores" class="btn btn-warning" /></a>

        <a href="listaEstado.jsp?id=${fila.id}">
        <input type="submit" value="Estado" class="btn btn-warning" /></center></a> 

<br>
<center>  <a href="index.jsp">Regresar</a></center>

</body>
</html>
