<%-- 
    Document   : actualizarCliente
    Created on : 22/11/2019, 09:43:26 PM
    Author     : agend
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
    <center><body >
            <h1>Sistema de Eventos</h1>
            <h2>Actualizar Cliente</h2> 

            <c:if test="${param.modifica == null}">
                <sql:query var="cliente" dataSource="${universidad}">
                    SELECT * FROM cliente where documento =?
                    <sql:param value="${param.documento}">
                    </sql:param>
                </sql:query>

                <form method="post" >

                    <table>
                        <c:forEach  var="itema" items="${cliente.rows}">
                            <tr><td>Documento</td>
                                <td><input type="text" name="documento" value="${itema.documento}"></td>      
                            </tr>
                            <tr><td>Nombre</td>
                                <td><input type="text" name="nombre_cliente" value="${itema.nombre_cliente}"></td>  
                            </tr> 
                            <tr><td>Celular</td>
                                <td><input type="text" name="celular" value="${itema.celular}"></td>  
                            </tr> 

                        </c:forEach>
                    </table> 
                    <br>
                    <input type="submit" value="Actualizar" class="btn btn-info"/><br>

                    <a href="listaClientes.jsp?id=${fila.id}">Regresar</a>
                    <tr>
                    <input type="hidden" name="modifica" value="SI" />
                    </tr>
                </form>
            </c:if>
            <c:if test="${param.modifica != null}">
                <sql:update var="result" dataSource="${universidad}">
                    update cliente
                    set nombre_cliente='${param.nombre_cliente}',
                    celular ='${param.celular}'
                    where documento = ${param.documento}
                </sql:update>
                <c:if test="${result == 1}">
                <center><p>Registro Actualizado Satisfactoriamente!</p><br>
                    <a href="listaClientes.jsp?id=${fila.id}">Regresar</a></center>
                </c:if>
            </c:if>


    </body>
</center>
</html>
