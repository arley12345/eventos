<%-- 
    Document   : actualizarEvento
    Created on : 14/10/2020, 06:37:44 PM
    Author     : ARLEY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@include file="WEB-INF/jspf/conexion.jspf" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><center>Sistema de Eventos</center></h1>
        <h2><center>Actualizar Evento</center></h2>
        
            <c:if test="${param.modifica == null}">
                <sql:query var="reserva" dataSource="${universidad}">
                    SELECT * FROM evento where id =?
                    <sql:param value="${param.id}">
                    </sql:param>
                </sql:query>

                <form method="post" >

                    <table>
                        <c:forEach  var="itema" items="${reserva.rows}">
                            <tr><td></td>
                                <td><input type="hidden" name="id" value="${itema.id}"></td>      
                            </tr>
                            <tr><td>Nombre:</td>
                                <td><input type="text" name="nombre" value="${itema.nombre}"></td>  
                            </tr> 
                             <tr><td>Lugar:</td>
                                <td><input type="text" name="lugar" value="${itema.lugar}"></td>  
                            </tr> 
                             <tr><td>Descripcion:</td>
                                <td><input type="text" name="descripcion" value="${itema.descripcion}"></td>  
                            </tr> 
                             <tr><td>Cliente:</td>
                                <td>
                                    <sql:query var="rsCliente" dataSource="${universidad}">
                                        select * from cliente                                
                                    </sql:query>

                                    <select name="cliente_id">
                                        <option value="0">-- seleccione --</option>
                                        <c:forEach var="item" items="${rsCliente.rows}">
                                            <option value="${item.documento}" class="form-control">
                                                <c:out value="${item.nombre_cliente}"/>
                                            </option>
                                        </c:forEach>
                                    </select>        
                                </td>
                            </tr>
                            <tr><td>Empleado:</td>
                                <td>
                                    <sql:query var="rsEmpleado" dataSource="${universidad}">
                                        select * from empleado                                
                                    </sql:query>

                                    <select name="empleado_id">
                                        <option value="0">-- seleccione --</option>
                                        <c:forEach var="item" items="${rsEmpleado.rows}">
                                            <option value="${item.cedula}" class="form-control">
                                                <c:out value="${item.nombre_empleado}"/>
                                            </option>
                                        </c:forEach>
                                    </select>        
                                </td>
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
                    update evento
                    set nombre='${param.nombre}',
                    lugar = '${param.lugar}',
                    descripcion = '${param.descripcion}',
                    cliente_id = ${param.cliente_id},
                    empleado_id = ${param.empleado_id}                    
                    where id = ${param.id}
                </sql:update>
                <c:if test="${result == 1}">
                <center><p>Registro Actualizado Satisfactoriamente!</p><br>
                    <a href="index.jsp">Regresar</a></center>
                </c:if>
            </c:if>
    </body>
</html>
