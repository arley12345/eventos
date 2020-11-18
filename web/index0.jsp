<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@include file="WEB-INF/jspf/conexion.jspf" %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>sitemas de eventos sociales</title>
        <link href="css/myestilos.css" rel="stylesheet" type="text/css"/>
        <link href="css/fontello.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

    </head>

    <body>
        <header>
            <div class="contenedor">
                <h1 class="icon-angellist">Sistema de Eventos</h1>
                <input type="checkbox" id="menu-bar">
                <label class="icon-menu" for="menu-bar"></label>
                <nav class="menu">
                    <a href="#tipos">TIPOS DE EVENTOS</a>
                    <a href="#galeria">GALERIA</a>
                    <a href="#testimonios">TESTIMONIOS</a>                 
                    <a href="login.jsp">INICIAR SESION</a>
                </nav>
            </div>
        </header>

        <main>
            <section id="banner">
                <img src="imagenes/portada4.jpg" >
                <div class="contenedor">
                    <h2>EL MEJOR SITIO PARA TUS EVENTOS</h2>


                </div>
            </section>

            <section id="bienvenidos">
                <div class="contenedor">
                    <h2><strong>QUIENES SOMOS?</strong></h2>
                    <br>
                    <h4>Somos un equipo de profesionales especializadas en organizar eventos sociales
                        y empresariales. Nos encargamos de la planificación, organización y coordinación
                        parcial del evento. Escuchamos las necesidades de nuestros protagonistas
                        y diseñamos una fiesta acorde a su presupuesto y personalidad. Ofrecemos las mejores
                        opciones de servicios a través de proveedores con gran trayectoria y seriedad en cada
                        rubro. Proponemos ideas creativas, detalles que identifiquen a los agasajados y
                        sorprendan a los invitados. Realizamos nuestro trabajo con responsabilidad y mucha
                        pasión, bajo la consigna que nos motiva de tener Todo Pensado para que el evento sea
                        un éxito.</h4>

                </div>
            </section><a name="tipos"></a>
            <section id="info">
                <h3>Tipos de Eventos </h3>
                <div class="contenedor">
                    <div class="info-pet">
                        <img src="imagenes/tipoConcierto.jpg" alt=""/>
                        <h4>tipo concierto</h4>
                        <p>en este evento se encargara de la aparte de la tarima como de luces equipos de sonido,
                            tendra un cordinador que sera el encargado para recibir los cantantes o personas que
                            tendran
                            participacion del evento</p>


                    </div>
                    <div class="info-pet">
                        <img src="imagenes/tipoFiesta.jpg" alt=""/>
                        <h4>tipo fiesta</h4>
                        <p>en este evento se encargara de la aparte de la animar la fiesta, poner la musica, el humo,
                            de la hora loca ect..</p>
                    </div>

                </div>

            </section>

            <section id="blog"><a name="galeria"></a>
                <h3><strong>GALERIA DE IMAGENES </strong></h3>
                <form method="post">
                    <div class="contenedor">

                        <article>
                            <img src="imagenes/eventoPrivado.jpg" width="400" height="200" class="zoom"/>
                        </article>
                        <article>
                            <img src="imagenes/privada.jpg" width="400" height="200" class="zoom"/>
                        </article>
                        <article>
                            <img src="imagenes/privada 2.jpg" width="400" height="200" class="zoom"/>
                        </article>
                        <article>
                            <img src="imagenes/privada3.jpg" alt="" width="400" height="200" class="zoom"/>
                        </article>
                        <article>
                            <img src="imagenes/privada4.jpg" alt="" width="400" height="200" class="zoom"/>
                        </article>
                        <article>
                            <img src="imagenes/privada5.jpg" alt="" width="400" height="200" class="zoom"/>
                        </article>
                        <article>
                            <img src="imagenes/concierto.jpg" alt="" width="400" height="200" class="zoom"/>
                        </article>
                        <article>
                            <img src="imagenes/concierto2.jpg" alt="" width="400" height="200" class="zoom"/>
                        </article>
                        <article>
                            <img src="imagenes/concierto3.jpg" alt="" width="400" height="200" class="zoom"/>
                        </article>

                    </div>
                </form>
            </section>

            <section id="blog"><a name="testimonios"></a>
                <h3><strong>TESTIMONIOS </strong></h3>
                <form >
                    <div class="testimonio" >

                        <article>
                            <h4><img id="sombra1" style="float:right; margin:10px;"  src="imagenes/testimonio1.jpg" alt=""/><br><br>
                                Esta feria artística y empresarial busca la integración de todos los residentes del
                                barrio La Cumbre, mediante actividades lúdica y deportivas; este año tendremos varios
                                eventos que reunirán los diferentes gustos recreativos de nuestros vecinos, esperamos
                                que los florideños nos acompañen y de otros sectores nos visiten y se enteren de la
                                unión y creatividad de nuestro sector”, mencionó Juan Francisco Valbuena, presidente
                                de la Junta de Acción Comunal del barrio La Cumbre.
                                Los organizadores denominaron este año la feria como ‘Segundo Encuentro Cultural,
                                Artístico, Empresarial y Artesanal Expocumbre 2013’.
                                En la programación se encuentran eventos como la cabalgata, deportes extremos 
                                entre otras ofertas de entretenimiento..</h4><br><br><br>
                        </article></div>
                    <article>
                        <h4><img id="sombra1" style="float:left; margin:10px;" width="400" height="200"  src="imagenes/testimonio2.jpg" alt=""/><br><br>
                            Celebramos un 40 Cumpleaños con una artista «Drag Queen» lo pasamos genial, reimos, cantamos…una actuación excelente.
                            La verdad muy buena organización desde el primer momento.
                            Muchisímas gracias por hacernos pasar una velada tan alegre.
                            Enhorabuena Cumple Party, si tenemos que realizar otro evento seguro 
                            que contaremos con vosotros. Hasta pronto</h4><br><br><br><br><br>
                    </article><br><br>
                    <article>
                        <img id="sombra1" style="float:right; margin:10px;" src="imagenes/testimonio3.jpg" alt="left"/><br><br>
                        <h4>Hola, celebré el dia 28 de Enero de 2017 el 13 cumpleaños de mi hija, escogimos
                            la Beauty Party, estan en esa edad que quieren ser mayores, las niñas lo pasaron
                            genial, cuando acabaron todas las actividades, pececitos, maquillaje de cara,
                            manicura, pedicura, estuvieron solas en la sala, pudiendose pintar otra vez,
                            cantar en el karaoke, bailar, etc., por mi parte encontré que la hora que me
                            dieron de 4 a 6 de la tarde era muy pronto, por otro lado solo son dos horas,
                            que encuentro muy escaso, es una actividad que debido a que están un rato con
                            las niñas, tienen después muy poco rato para estar disfrutando de estar solas
                            a sus anchas, la merienda algo escasilla, en este caso hasta sobró, debido a
                            la hora, venían de casa con la comida en la boca, pero si la fiesta es a las
                            6 a 8 de la tarde estoy segura que falta merienda. Todas me dijeron lo mismo,
                            que se lo habían pasado genial, y que repetirían, pero con mas tiempo para todo,
                            las actividades y el tiempo libre con el karaoke, etc.</h4><br><br><br>
                    </article>
                    <article>
                        <img id="sombra1" style="float:left; margin:10px;"  src="imagenes/testimonio4.jpg" alt=""/>
                        <h4>En mi familia el mes de enero se lleva la palma en cuestión de eventos ya que
                            tenemos cumpleaños todas las semanas, pero el año pasado… el año pasado no hubo
                            ni cumpleaños, ni santos, ni días festivos, ni regalos, ni tartas. En enero como
                            estuvimos de médicos todo eso quedó a un lado y después de febrero ya nos olvidamos
                            de nosotros mismos… febrero fue el mes traicionero… pero chicos...¡¡Este año mi 
                            madre se ha soltado la melena y se ha ido de fiesta!! Ahora mismo tiene que estar 
                            en el pueblo, pasando un frío que pela, celebrando las águedas con el resto de 
                            mujeres de su quinta y las que no son de su quinta, gente que en estos duros 
                            meses se ha preocupado de ella como si fuera uno de nosotros, y qué queréis que os
                            diga, estoy feliz de que por fin se pueda juntar con la gente que la conoce desde
                            pequeña y puedan celebrar las águedas, los águedos y fiestas varias (que al año se
                            juntan unas cuantas veces para celebrar cualquier cosa)Estos días se la notaba
                            nerviosilla porque iba a llevar tarta, pasteles y no sé cuantas cosas más en
                            agradecimiento por haber estado ahí y quería que todo saliera bien; yo estoy segura
                            que todo saldrá estupendamente bien, que bailará, reirá y será de los mejores días
                            que pase! y ni hablar del dj estuvo estupendo. Se merece esto y mucho más!!!!!</h4><br><br><br>
                    </article> 



                </form>
            </section>

            <section id="info">
                <h3>SITIOS ESTABLECIDOS </h3>
                <div class="contenedor">
                    <div class="info-pet">
                        <img src="imagenes/bucaramanga.jpg" alt="" class="zoom">
                        <h4>BUCARAMANGA</h4>
                    </div>
                    <div class="info-pet">
                        <img src="imagenes/floridablanca.jpg" alt="" class="zoom">
                        <h4>FLORIDABLANCA</h4>
                    </div>
                    <div class="info-pet">
                        <img src="imagenes/giron.jpg" alt="" class="zoom">
                        <h4>GIRON</h4>
                    </div>
                    <div class="info-pet">
                        <img src="imagenes/piedecuesta.jpg" alt="" class="zoom">
                        <h4>PIEDECUESTA</h4>
                    </div>
                </div>
            </section>
            <c:if test="${param.nombre == null}">
                <section id="blog">
                    <center> <h3>cotiza con nosotros</h3></center>
                    <form method="post">

                        <div class="contenedor">
                            <article>

                                <table>
                                    <tr><td>Nombre:</td>
                                        <td><input type="text" name="nombre" value="${itema.nombre}" class="form-control" size="30"  maxlength="30"/></td>
                                    </tr>
                                    <tr><td>Apellidos</td>
                                        <td><input type="text" name="apellidos" value="${itema.apellidos}" class="form-control"/></td>
                                    </tr>
                                    <tr><td>Email</td>
                                        <td><input type="email" name="email" value="${itema.email}" class="form-control"/></td>
                                    </tr>
                                    <tr><td>Lugar</td>
                                        <td><input type="text" name="lugar" value="${itema.lugar}" class="form-control"/></td>
                                    </tr>
                                </table>
                            </article>
                            <article>
                                <table> 
                                    <tr><td>Telefono</td>
                                        <td><input type="text" name="telefono" value="${itema.telefono}" class="form-control" size="30"  maxlength="30"/></td>
                                    </tr>
                                    <tr><td>Fecha</td>
                                        <td><input type="date" name="fecha" value="${itema.fecha}" class="form-control"/></td>


                                    </tr>

                                    <tr><td>tipo de evento</td>
                                        <td><select name="tipo_evento" value="${itema.tipo_evento}" class="form-control">
                                                <!-- Opciones de la lista -->
                                                <option value="fiesta">fiesta</option>
                                                <option value="concierto" selected>concierto</option> <!-- Opción por defecto -->
                                                
                                            </select></td>
                                    </tr>

                                </table>
                                <br>

                            </article><br>
                            <article>
                                <input type="submit" value="Cotizar" class="btn btn-primary">
                            </article>
                        </div>
                    </form>
                </section>
            </c:if>
            <c:if test="${param.nombre !=null}">
                <sql:update var="result" dataSource="${universidad}">
                    insert into 
                    reserva (nombre,apellidos,email,lugar,telefono,fecha,tipo_evento)
                    values ('${param.nombre}',
                    '${param.apellidos}',
                    '${param.email}',
                    '${param.lugar}',
                    '${param.telefono}',
                    '${param.fecha}',
                    '${param.tipo_evento}'
                    )
                </sql:update>
                <c:if test="${result == 1}">
                    <center> <p>Registro realizado satisfactoriamente</p>
                        <a href="index0.jsp">Aceptar</a> </center>

                </c:if>


            </c:if>

        </main>

        <footer>
            <div class="contenedor">
                <p class="copy">Arley Sanchez &copy; 2020</p>
                <div class="sociales">
                    <a class="icon-facebook-official" href="#"></a>
                    <a class="icon-instagram" href="#"></a>
                    <a class="icon-tumblr-squared" href="#"></a>
                    <a class="fontawesome-google-plus-sign" href="#"></a>
                </div>
            </div>
        </footer>

        <script>
            $(document).ready(function () {
                $('.zoom').hover(function () {
                    $(this).addClass('transition');
                }, function () {
                    $(this).removeClass('transition');
                });
            });
        </script>

    </body>
</html>
