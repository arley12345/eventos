

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



        
        <title>Sistema Universidad</title>
    </head>
    <body>
        <h1><center>Sistema de Eventos</center></h1>
        <h2><center>Agregar Estado</center></h2>
                <c:if test="${param.est_nombre == null}">
            <form method="post">

                <div class="container">
                    <table style="magin:0 auto">

                        <tr><td>Descripcion</td>
                            <td><input type="text" name="est_nombre" value="${itema.est_nombre}"/></td>
                        </tr>



                        <td>

                        </td>
                    </table><br>
                    <input type="submit" value="Insertar" class="btn btn-primary"> <br>
                    <a href="listaEstado.jsp?id=${fila.id}">Regresar</a>
                </div>
                <br>
             
            </form>  
        </c:if>

        <c:if test="${param.est_nombre !=null}">
            <sql:update var="result" dataSource="${universidad}">
                insert into                
                estado (est_nombre)
                values ('${param.est_nombre}')
            </sql:update>
            <c:if test="${result == 1}">
            <center>    <p>Registro realizado satisfactoriamente</p>
                <a href="listaEstado.jsp?id=${fila.id}">Regresar</a> </center>

        </c:if>


    </c:if>

</body>
</html>
