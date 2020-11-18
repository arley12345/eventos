<%-- 
    Document   : actualizarEmpleado
    Created on : 22/11/2019, 11:39:55 PM
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
            <h2>Actualizar Empleado</h2> 

            <c:if test="${param.modifica == null}">
                <sql:query var="empleado" dataSource="${universidad}">
                    SELECT * FROM empleado where cedula =?
                    <sql:param value="${param.cedula}">
                    </sql:param>
                </sql:query>

                <form method="post" >

                    <table>
                        <c:forEach  var="itema" items="${empleado.rows}">
                            <tr><td>Cedula</td>
                                <td><input type="text" name="cedula" value="${itema.cedula}"></td>      
                            </tr>
                            <tr><td>Nombre</td>
                                <td><input type="text" name="nombre_empleado" value="${itema.nombre_empleado}"></td>  
                            </tr> 
                            <tr><td>Apellido</td>
                                <td><input type="text" name="apellido" value="${itema.apellido}"></td>  
                            </tr> 
                            <tr><td>Celular</td>
                                <td><input type="text" name="celular" value="${itema.celular}"></td>  
                            </tr> 

                        </c:forEach>
                    </table> 
                    <br>
                    <input type="submit" value="Actualizar" class="btn btn-info"/><br>

                    <a href="listaEmpleados.jsp">Regresar</a>
                    <tr>
                    <input type="hidden" name="modifica" value="SI" />
                    </tr>
                </form>
            </c:if>
            <c:if test="${param.modifica != null}">
                <sql:update var="result" dataSource="${universidad}">
                    update empleado
                    set nombre_empleado='${param.nombre_empleado}',
                    apellido='${param.apellido}',
                    celular ='${param.celular}'
                    where cedula = ${param.cedula}
                </sql:update>
                <c:if test="${result == 1}">
                <center><p>Registro Actualizado Satisfactoriamente!</p><br>
                    <a href="listaEmpleados.jsp?id=${fila.id}">Regresar</a></center>
                </c:if>
            </c:if>


    </body>
</center>
</html>

