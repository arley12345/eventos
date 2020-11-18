

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
        <h1><center>Gestionar Evento</center></h1>
        <h2><center>Gestionar Evento</center></h2>
                <c:if test="${param.nombre == null}">

            <div clas="col-lg-12">
                <form method="post">

                    <div class="container">

                        <table>

                            <tr><td>Nombre:</td>
                                <td><input type="text" name="nombre" value="${itema.nombre}" class="form-control"/></td>
                            </tr>
                            <tr><td>lugar:</td>
                                <td><input type="text" name="lugar" value="${itema.lugar}" class="form-control"/></td>
                            </tr>
                            <tr><td>Descripcion:</td>
                                <td><input type="text" name="descripcion" value="${itema.descripcion}" class="form-control"/></td>
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
                                            <option value="${item.cedula}">
                                                <c:out value="${item.nombre_empleado}"/>
                                            </option>
                                        </c:forEach>
                                    </select>        
                                </td>
                        </table>
                        <br>
                        <input type="submit" value="Insertar" class="btn btn-primary">
                        <br>
                         <a href="index.jsp">Regresar</a> 
                    </div>
                   

                    <br>

                </form>  
            </div>
        </c:if>

        <c:if test="${param.nombre !=null}">
            <sql:update var="result" dataSource="${universidad}">
                insert into 

                evento (nombre,lugar,descripcion,cliente_id,empleado_id)
                values ('${param.nombre}',
                '${param.lugar}',
                '${param.descripcion}',
                ${param.cliente_id},
                ${param.empleado_id}
                )
            </sql:update>
            <c:if test="${result == 1}">
            <center> <p>Registro realizado satisfactoriamente</p>
                <a href="index.jsp">Regresar</a> </center>

        </c:if>


    </c:if>

</body>
</html>
