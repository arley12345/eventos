<%-- 
    Document   : eliminarCategorias
    Created on : 18/11/2019, 04:13:48 PM
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
        <title>Sistema de Eventos</title>
    </head>
    <body>
        <h1><center>Sistema de Eventos</center></h1>
        <h2><center>Eliminar Categoria</center></h2>
        
        <c:if test="${param.id != null}">
            <sql:update var="result" dataSource="${universidad}">
              delete from categoria
              where id =${param.id}
            </sql:update>
            <c:if test="${result ==1}">
               <center>  <p> Registro Eliminado Satisfactoriamente...</p>
              <a href="listarCategoria.jsp?id=${fila.id}">Regresar</a> </center>
            
                
            </c:if>
          
            
            
        </c:if>
    </body>
</html>
