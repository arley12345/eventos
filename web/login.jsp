<%-- 
    Document   : login
    Created on : 1/10/2020, 05:36:17 PM
    Author     : ARLEY
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link href="css/estiloslogin.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Eventos Sociales</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>
  
        
        
        <div class="container col-col-3">
            <form action="Controlador" method="POST">
                <div class="form-group text-center" >
                    <img src="imagenes/login.jpg" height="80" width="80"/>
                    <p><strong>Bienvenidos al sistema</strong></p>
                </div>
                <div class="form-group">
                    <label>Nombres:</label>
                    <input class="form-control" type="text" name="txtnom" placeholder="Ingrese el usuario">
                </div>
                <div class="form-group">
                   <label>Contraseña:</label>
                   <input class="form-control" type="password" name="txtcontra" placeholder="Ingrese la contraseña"> 
                    
                </div>
                
                <input class="btn-danger" type="submit" name="accion" value="Ingresar"><br>
                <a href="index0.jsp">Regresar</a>
            </form>
            
        </div>
        
        
        
        
        
        
        
        
        
            
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>  
    </body>
</html>
