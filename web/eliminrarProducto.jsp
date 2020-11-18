<%-- 
    Document   : eliminarEvento
    Created on : 19/11/2019, 12:24:50 AM
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



        
        <title>Sistema de Eventos</title>
    </head>
    <body>
        <h1><center>Sistema de Eventos</center></h1>
        <h2><center>Eliminar Producto</center></h2>
        
        <c:if test="${param.id != null}">
            <sql:update var="result" dataSource="${universidad}">
              delete from productos
              where id = ${param.id}
            </sql:update>
            <c:if test="${result ==1}">
            <center> <p> Registro Eliminado Satisfactoriamente...</p> 
              <a href="listarProductos.jsp?id=${fila.id}">Regresar</a> </center>
            
                
            </c:if>
          
            
            
        </c:if>
             
    </body>
</html>
