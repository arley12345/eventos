
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@include file="WEB-INF/jspf/conexion.jspf" %>
<%@page session="true"  %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/myestilos.css" rel="stylesheet" type="text/css"/>
        <link href="css/fontello.css" rel="stylesheet" type="text/css"/>



   


        <title>Sistema de Eventos</title>
    </head>
    
    <body>
        
          
            
        
       <br><br><br><br>
    <center> <h2>RESERVACIONES</h2></center>
       
       <sql:query var="result" scope="request" dataSource="${universidad}">

          select * from reserva



        </sql:query>
          
           <table border="0" class="table table-borderd"> 
            <thead>
                <tr>
                    <th class="text-center">id</th>
                    <th class="text-center">Nombre</th>
                    <th class="text-center">Apellido</th>
                    <th class="text-center">Email</th>
                    <th class="text-center">Lugar</th>
                    <th class="text-center">Telefono</th>
                    <th class="text-center">fecha</th>
                    <th class="text-center">tipo de evento</th>
                    

                    <th colspan="2">Acciones</th></tr>
            </thead> 

            <tbody>
                <c:forEach var="fila" items="${result.rows}">
                    <tr> 
                       <td class="text-center"><c:out value="${fila.id_reserva}" /></td> 
                        <td class="text-center"><c:out value="${fila.nombre}" /></td> 
                        <td class="text-center"><c:out value="${fila.apellidos}" /></td>     
                        <td class="text-center"><c:out value="${fila.email}"/></td>
                        <td class="text-center"><c:out value="${fila.lugar}"/></td>
                        <td class="text-center"><c:out value="${fila.telefono}" /></td> 
                        <td class="text-center"><c:out value="${fila.fecha}" /></td>
                        <td class="text-center"><c:out value="${fila.tipo_evento}" /></td> 

                        <td><a href="eliminarReserva.jsp?id=${fila.id_reserva}">
                                <input type="submit" value="eliminar" class="btn btn-danger" /></a></td>
                               

                    </tr>
                </c:forEach>
            </tbody>

        </table>

        <br>
        <br>
        <br>
        <br>
          
        <center> <h2>EVENTOS RESERVADOS</h2></center>
        <br>
        <br><br> <sql:query var="result" scope="request" dataSource="${universidad}">

            select  evento.id, evento.nombre, evento.lugar, evento.descripcion, cliente.nombre_cliente, empleado.nombre_empleado

            from evento
            join cliente
            on evento.cliente_id=cliente.documento
            join empleado
            on evento.empleado_id=empleado.cedula
            where evento.cliente_id=cliente.documento



        </sql:query>


        <a  href="listarProductos.jsp?id=${fila.peoductos.id}"> <center>
                <input type="submit" value="Producto"  maxlength="50" class="btn btn-success" /></center></a> <br><br>



        <table border="0" class="table table-borderd"> 
            <thead>
                <tr><th class="text-center">id</th>
                    <th class="text-center">Nombre</th>
                    <th class="text-center">lugar</th>
                    <th class="text-center">Descripcion</th>
                    <th class="text-center">Cliente</th>
                    <th class="text-center">Empleado</th>

                    <th colspan="2">Acciones</th></tr>
            </thead> 

            <tbody>
                <c:forEach var="fila" items="${result.rows}">
                    <tr> 
                        <td class="text-center"><c:out value="${fila.id}" /></td> 
                        <td class="text-center"><c:out value="${fila.nombre}" /></td> 
                        <td class="text-center"><c:out value="${fila.lugar}" /></td>     
                        <td class="text-center"><c:out value="${fila.descripcion}"/></td>
                        <td class="text-center"><c:out value="${fila.nombre_cliente}"/></td>
                        <td class="text-center"><c:out value="${fila.nombre_empleado}" /></td> 

                        <td><a href="eliminarEvento.jsp?id=${fila.id}">
                                <input type="submit" value="eliminar" class="btn btn-danger" /></a></td>
                        <td><a href="actualizarEvento.jsp?id=${fila.id}">
                                <input type="submit" value="Editar" class="btn btn-info" /></a></td>        

                    </tr>
                </c:forEach>
            </tbody>

        </table>

        <br>
        <br>
        <br>
        <br>
    <center>
        <a  href="gestionarEvento.jsp?id=${fila.id}">
            <input type="submit" value="Gestionar Evento"  maxlength="50" class="btn btn-info" /> </a>  

    </center>

    <br>
    <div>
        <a  href="listaEmpleados.jsp?id=${fila.id}" ><center>
            <input type="submit" value="empleados"  size="30" maxlength="50" class="btn btn-warning"  /></a>

        <a  href="listaClientes.jsp?id=${fila.id}">
            <input type="submit" value="Clientes"  maxlength="50" class="btn btn-warning" /></a>




        <br><br> 
       <a href="login.jsp">Regresar</a>

    </div>

</body>
<br><br>
<footer>
    <div>

        <center>   &copy; 2020: <strong> Arley Sanchez Avellaneda </strong></center> 

    </div>
</footer>
</html>
