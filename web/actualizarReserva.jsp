<%-- 
    Document   : actualizarReserva
    Created on : 13/10/2020, 06:29:18 PM
    Author     : ARLEY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@include file="WEB-INF/jspf/conexion.jspf" %>
<!DOCTYPE html>
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
        <title>JSP Page</title>
    </head>
    <body>
       <h1><center>Sistema de Eventos</center></h1>
        <h2><center>Actualizar Reserva</center></h2>
        
            <c:if test="${param.modifica == null}">
                <sql:query var="reserva" dataSource="${universidad}">
                    SELECT * FROM reserva where id_reserva =?
                    <sql:param value="${param.id}">
                    </sql:param>
                </sql:query>

                <form method="post" >

                    <table>
                        <c:forEach  var="itema" items="${reserva.rows}">
                            <tr><td></td>
                                <td><input type="hidden" name="id_reserva" value="${itema.id_reserva}"></td>      
                            </tr>
                            <tr><td>Nombre:</td>
                                <td><input type="text" name="nombre" value="${itema.nombre}"></td>  
                            </tr> 
                             <tr><td>Apellidos:</td>
                                <td><input type="text" name="apellidos" value="${itema.apellidos}"></td>  
                            </tr> 
                             <tr><td>Email</td>
                                <td><input type="text" name="email" value="${itema.email}"></td>  
                            </tr> 
                             <tr><td>Lugar</td>
                                <td><input type="text" name="lugar" value="${itema.lugar}"></td>  
                            </tr> 
                             <tr><td>Telefono</td>
                                <td><input type="text" name="telefono" value="${itema.telefono}"></td>  
                            </tr> 
                             <tr><td>Fecha</td>
                                <td><input type="date" name="fecha" value="${itema.fecha}"></td>  
                            </tr> 
                             <tr><td>Tipo de Evento</td>
                                <td><input type="text" name="tipo_evento" value="${itema.tipo_evento}"></td>  
                            </tr> 
                            
                            
                        </c:forEach>
                    </table> 
                    <br>
                    <input type="submit" value="Actualizar" class="btn btn-info"/><br>

                    <a href="index.jsp">Regresar</a>
                    <tr>
                    <input type="hidden" name="modifica" value="SI" />
                    </tr>
                </form>
            </c:if>
            <c:if test="${param.modifica != null}">
                <sql:update var="result" dataSource="${universidad}">
                    update reserva
                    set nombre='${param.nombre}',
                    apellidos = '${param.apellidos}',
                    email = '${param.email}',
                    lugar = '${param.lugar}',
                    telefono = '${param.telefono}',
                    fecha = '${param.fecha}',
                    tipo_evento = '${param.tipo_evento}'
                    where id_reserva = ${param.id_reserva}
                </sql:update>
                <c:if test="${result == 1}">
                <center><p>Registro Actualizado Satisfactoriamente!</p><br>
                    <a href="index.jsp">Regresar</a></center>
                </c:if>
            </c:if>
    </body>
</html>
