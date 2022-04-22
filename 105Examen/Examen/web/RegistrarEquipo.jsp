

<%@page import="Recursos.BaseDeDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link rel="stylesheet" href="CSS/style1.css"/>
    <script src="JavaScript/js1.js"></script>
    <script src="JavaScript/js2.js"></script>
    <body>
        <div>
        <header>
            
            <img src="Img/img1.png" width="100" height="100" alt="img1"/>
            <h1 class="text">SISTEMA DE REGISTRO DE EQUIPOS DE COMPUTO PARA LABORATORIO</h1>
            <img src="Img/img2.png" width="65" height="100" alt="img2"/>

        </header>
        </div>
        <%
            
            BaseDeDatos bd = new BaseDeDatos();
            
            int boleta = Integer.parseInt(request.getParameter("id"));
            
            int id_persona = bd.BuscarEntero("Select * from mpersona where boleta ="+boleta+";", "id_person");
            int id_img = bd.BuscarEntero("Select * from dpersona where id_persona ="+id_persona+";", "id_img");
            String usuario = bd.BuscarCadena("Select * from dpersona where id_persona ="+id_persona+";", "usuario");
            String contra = bd.BuscarCadena("Select * from dpersona where id_persona ="+id_persona+";", "contraseña");
            String ruta = bd.BuscarCadena("Select * from mimg where id_img ="+id_img+";", "ruta");
            
            
        %>
        <div id="cuerpo2">
                <section class="lateral" id="menu">
                    
                    <a  class="boton_menu" onclick="iniciarSesion()">
                        <form style="text-align: center" action="IniciarSesion.jsp" name="formulario_in">
                        <input type="hidden" name="usuario" value="<%=usuario%>">
                        <input type="hidden" name="contra" value="<%=contra%>">
                        </form>
                        Inicio
                    </a>
                        <a class="boton_menu" href="ConsultarEquipos.jsp?id=<%=boleta%>">
                        Consultar Equipos
                    </a>
                    <a class="boton_menu" href="ReportarEquipo.jsp?id=<%=boleta%>">
                        Reportar Equipo
                    </a>
                    <a class="boton_menu">
                        Actualizar Alumno
                    </a>

                </section>
                <section>

                    <header class="encabezado">

                        <section id="imagen">
                            <img src="<%=ruta%>" width="150"/>
                        </section>
                        <div class="text"id="titulo">
                            <%=usuario%>
                        </div>
                    </header>

                        <section class="text" id="centro">
                            
                            <form action="AceptarRegistroEquipo.jsp" name="formulario_re">
                                
                                <h3 class="sub_registro">Registrar Equipo</h3>
                                <hr class="lp2">
                                <h3 class="sub_registro">CPU</h3>
                                <div class="campos2">
                                    
                                    <div class="campos"><p>Ingresa el codigo serial del CPU:</p><input type="text" name="cod_cpu"class="input_text"></div>
                                    <div class="campos"><p>Ingresa la descripcion del cpu:</p><input type="text" name="desc_cpu" class="input_text"></div>
                                    <div class="campos"><p>Ingresa la marca:</p>
                                    <div>

                                        <input type="radio" name="marca_cpu" value="1">
                                        <label>HP</label>
                                        <input type="radio" name="marca_cpu" value="2">
                                        <label>DELL</label>
                                        <input type="radio" name="marca_cpu" value="3">
                                        <label>Lenovo</label>
                                        <input type="radio" name="marca_cpu" value="4">
                                        <label>Assus</label>
                                        <input type="radio" name="marca_cpu" value="5">
                                        <label>Alien</label>
                                        <input type="radio" name="marca_cpu" value="6">
                                        <label>Apple</label>
                                        <input type="radio" name="marca_cpu" value="7">
                                        <label>Huawei</label>


                                    </div>
                                    </div>

                                </div>
                                <h3 class="sub_registro">Monitor</h3>
                                <div class="campos2">
                                    
                                    <div class="campos"><p>Ingresa el codigo serial del monitor:</p><input type="text" name="cod_mon"class="input_text"></div>
                                    <div class="campos"><p>Ingresa la descripcion del cpu:</p><input type="text" name="desc_mon" class="input_text"></div>
                                    <div class="campos"><p>Ingresa la marca:</p>
                                    <div>

                                        <input type="radio" name="marca_mon" value="1">
                                        <label>HP</label>
                                        <input type="radio" name="marca_mon" value="2">
                                        <label>DELL</label>
                                        <input type="radio" name="marca_mon" value="3">
                                        <label>Lenovo</label>
                                        <input type="radio" name="marca_mon" value="4">
                                        <label>Assus</label>
                                        <input type="radio" name="marca_mon" value="5">
                                        <label>Alien</label>
                                        <input type="radio" name="marca_mon" value="6">
                                        <label>Apple</label>
                                        <input type="radio" name="marca_mon" value="7">
                                        <label>Huawei</label>


                                    </div>
                                    </div>

                                </div>
                                <h3 class="sub_registro">Accesorios</h3>
                                <div class="campos2">
                                    
                                    <div class="campos"><p>Ingresa la descripcion del los accesorios:</p><input type="text" name="desc_acss" class="input_text"></div>
                                    <div class="campos"><p>Ingresa la marca:</p>
                                    <div>

                                        <input type="radio" name="marca_acss" value="1">
                                        <label>HP</label>
                                        <input type="radio" name="marca_acss" value="2">
                                        <label>DELL</label>
                                        <input type="radio" name="marca_acss" value="3">
                                        <label>Lenovo</label>
                                        <input type="radio" name="marca_acss" value="4">
                                        <label>Asus</label>
                                        <input type="radio" name="marca_acss" value="5">
                                        <label>Alien</label>
                                        <input type="radio" name="marca_acss" value="6">
                                        <label>Apple</label>
                                        <input type="radio" name="marca_acss" value="7">
                                        <label>Huawei</label>


                                    </div>
                                    </div>

                                </div>
                                <h3 class="sub_registro">Configuracion</h3>
                                <div class="campos2">
                                    
                                    <div class="campos"><p>Ingresa la descripcion del la configuracion:</p><input type="text" name="desc_config" class="input_text"></div>
                                    <div class="campos"><p>Ingresa la marca:</p>
                                    <div>

                                        <input type="radio" name="marca_config" value="6">
                                        <label>Apple</label>
                                        <input type="radio" name="marca_config" value="9">
                                        <label>Linux</label>
                                        <input type="radio" name="marca_config" value="8">
                                        <label>Microsoft</label>


                                    </div>
                                    </div>

                                </div>
                                <h3 class="sub_registro">Equipo</h3>
                                <div class="campos2">
                                    
                                    <div class="campos"><p>Ingresa la etiqueta del equipo:</p><input type="number" name="etiqueta" class="input_text"></div>
                                    <div class="campos"><p>Laoratorio:</p><div></div>
                                        <div>
                                        <input type="radio" name="lab" value="1">
                                        <label>Laboratorio de Base de Datos</label>
                                        </div>
                                        <div>
                                        <input type="radio" name="lab" value="2">
                                        <label>Laboratorio de Desarrollo de Software</label>
                                        </div>
                                        <div>
                                        <input type="radio" name="lab" value="3">
                                        <label>Laboratorio de Nuevas Teconologias</label>
                                        </div>
                                        <div>
                                        <input type="radio" name="lab" value="4">
                                        <label>Laboratorio 4.0</label>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="campos"><p>Aginatura:</p><div></div>
                                        <div>
                                        <input type="radio" name="asignatura" value="1">
                                        <label>TECNICAS DE PROGRAMACION PERSONAL CON CALIDAD</label>
                                        </div>
                                        <div></div>
                                        <div>
                                        <input type="radio" name="asignatura" value="2">
                                        <label>LAB. DE PROYECTOS DE TECNOLOGIAS DE LA INFORMACION II</label>
                                        </div><div></div>
                                        <div>
                                        <input type="radio" name="asignatura" value="3">
                                        <label>BASES DE DATOS</label>
                                        </div><div></div>
                                        <div>
                                        <input type="radio" name="asignatura" value="4">
                                        <label>PROGRAMACION Y SERVICIOS WEB</label>
                                        </div>
                                    </div>

                                </div>
                                <input type="hidden" name="id" value="<%=boleta%>">

                            </form>
                                <button onclick="registrarEquipo()" id="registrar">Registrar Equipo</button>
                            
                            <div id="salir">
                                <div></div>
                                <a href="index.html" class="boton_aceptar">SALIR</a>
                            </div>
                            
                        </section>

                </section>
            </div>
        <div>
        
        <footer>
            
            <div>
                
            </div>
            <div class="text" id="pie">
                
                <hr class="lp1">
                <p>
                  
                    Sistema para el registro de equipos de computo desarrollado por:
                    
                </p>
                <p>
                    
                    Morales Campuzano Jose Rodrigo
                    
                </p>
                <p>
                    
                    Sebastian Salazar Monsreal

                    
                </p>

            </div>
            <div>
                
            </div>
            
    
        </footer>
    </body>
</html>
