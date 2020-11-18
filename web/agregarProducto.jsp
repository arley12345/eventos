

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
        <h1><center>Sistema de Eventos</center></h1>
        <h2><center>Agregar producto</center></h2>
                <c:if test="${param.nombre == null}">

            <div clas="col-lg-12">
                <form method="post">

                    <div class="container">

                        <table>

                            <tr><td>Nombre:</td>
                                <td><input type="text" name="nombre" value="${itema.nombre}" class="form-control"/></td>
                            </tr>
                            <tr><td>Cantidad:</td>
                                <td><input type="text" name="cantidad" value="${itema.cantidad}" class="form-control"/></td>
                            </tr>
                            <tr><td>Categoria:</td>
                                <td>
                                    <sql:query var="rsCategoria" dataSource="${universidad}">
                                        select * from categoria                                
                                    </sql:query>

                                    <select name="categoria_id">
                                        <option value="0">-- seleccione --</option>
                                        <c:forEach var="item" items="${rsCategoria.rows}">
                                            <option value="${item.id}" class="form-control">
                                                <c:out value="${item.cat_nombre}"/>
                                            </option>
                                        </c:forEach>
                                    </select>        
                                </td>
                            </tr>
                            <tr><td>Estado:</td>
                                <td>
                                    <sql:query var="rsEstado" dataSource="${universidad}">
                                        select * from estado                                
                                    </sql:query>

                                    <select name="estado_id">
                                        <option value="0">-- seleccione --</option>
                                        <c:forEach var="item" items="${rsEstado.rows}">
                                            <option value="${item.id}" class="form-control">
                                                <c:out value="${item.est_nombre}"/>
                                            </option>
                                        </c:forEach>
                                    </select>        
                                </td>
                            </tr>
                            <tr><td>Proveedor</td>
                                <td>
                                    <sql:query var="rsProveedores" dataSource="${universidad}">
                                        select * from proveedores                                
                                    </sql:query>

                                    <select name="proveedores_id">
                                        <option value="0">-- seleccione --</option>
                                        <c:forEach var="item" items="${rsProveedores.rows}">
                                            <option value="${item.id}">
                                                <c:out value="${item.prove_nombre}"/>
                                            </option>
                                        </c:forEach>
                                    </select>        
                                </td>
                        </table>
                        <br>
                        <input type="submit" value="Insertar" class="btn btn-primary">
                        <br>
                        <a href="listarProductos.jsp">Regresar</a> 
                    </div>


                    <br>

                </form>  
            </div>
        </c:if>

        <c:if test="${param.nombre !=null}">
            <sql:update var="result" dataSource="${universidad}">
                insert into 

                productos (nombre,cantidad,categoria_id,estado_id,proveedores_id)
                values ('${param.nombre}',
                '${param.cantidad}',
                '${param.categoria_id}',
                ${param.estado_id},
                ${param.proveedores_id}
                )
            </sql:update>
            <c:if test="${result == 1}">
            <center> <p>Registro realizado satisfactoriamente</p>
                <a href="listarProductos.jsp?id=${fila.id}">Regresar</a>
            </center>

        </c:if>


    </c:if>

</body>
</html>
