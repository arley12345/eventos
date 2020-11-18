

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@include file="WEB-INF/jspf/conexion.jspf" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REgistro de reserva</title>
    </head>
    <body>
        <c:if test="${param.nombre !=null}">
            <sql:update var="result" dataSource="${universidad}">
                insert into 
                reserva (nombre,apellidos,email,lugar,telefono,fecha,tipo_evento)
                values ('${param.nombre}',
                '${param.apellidos}',
                '${param.email}',
                '${param.lugar}',
                '${param.telefono}',
                ${param.fecha},
                '${param.tipo_evento}'
                )
            </sql:update>
            <c:if test="${result == 1}">
            <center> <p>Registro realizado satisfactoriamente</p>
                <a href="index0.jsp">Regresar</a> </center>

        </c:if>


    </c:if>
    </body>
</html>
