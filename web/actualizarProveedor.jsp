<%-- 
    Document   : actualizarProveedor
    Created on : 23/11/2019, 12:40:32 AM
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
            <h2>Actualizar Proveedor</h2> 

            <c:if test="${param.modifica == null}">
                <sql:query var="proveedores" dataSource="${universidad}">
                    SELECT * FROM proveedores where id =?
                    <sql:param value="${param.id}">
                    </sql:param>
                </sql:query>

                <form method="post" >

                    <table>
                        <c:forEach  var="itema" items="${proveedores.rows}">
                            <tr><td></td>
                                <td><input type="hidden" name="id" value="${itema.id}"></td>      
                            </tr>
                            <tr><td>Nombre</td>
                                <td><input type="text" name="prove_nombre" value="${itema.prove_nombre}"></td>  
                            </tr> 
                            <tr><td>Direccion</td>
                                <td><input type="text" name="direccion" value="${itema.direccion}"></td>  
                            </tr> 
                            

                        </c:forEach>
                    </table> 
                    <br>
                    <input type="submit" value="Actualizar" class="btn btn-info"/><br>

                    <a href="listarProveedores.jsp">Regresar</a>
                    <tr>
                    <input type="hidden" name="modifica" value="SI" />
                    </tr>
                </form>
            </c:if>
            <c:if test="${param.modifica != null}">
                <sql:update var="result" dataSource="${universidad}">
                    update proveedores
                    set prove_nombre='${param.prove_nombre}',
                    direccion='${param.direccion}'
                    where id = ${param.id}
                </sql:update>
                <c:if test="${result == 1}">
                <center><p>Registro Actualizado Satisfactoriamente!</p><br>
                    <a href="listarProveedores.jsp">Regresar</a></center>
                </c:if>
            </c:if>


    </body>
</center>
</html>


