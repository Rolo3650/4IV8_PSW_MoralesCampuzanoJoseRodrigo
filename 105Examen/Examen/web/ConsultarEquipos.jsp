

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
    <body>
        <div>
        <header>
            
            <img src="Img/img1.png" width="100" height="100" alt="img1"/>
            <h1 class="text">SISTEMA DE REGISTRO DE EQUIPOS DE COMPUTO PARA LABORATORIO</h1>
            <img src="Img/img2.png" width="65" height="100" alt="img2"/>

        </header>
            <%
            
            BaseDeDatos bd = new BaseDeDatos();
            
            int boleta = Integer.parseInt(request.getParameter("id"));
            
            int id_persona = bd.BuscarEntero("Select * from mpersona where boleta ="+boleta+";", "id_person");
            int id_img = bd.BuscarEntero("Select * from dpersona where id_persona ="+id_persona+";", "id_img");
            String usuario = bd.BuscarCadena("Select * from dpersona where id_persona ="+id_persona+";", "usuario");
            String contra = bd.BuscarCadena("Select * from dpersona where id_persona ="+id_persona+";", "contraseña");
            String ruta = bd.BuscarCadena("Select * from mimg where id_img ="+id_img+";", "ruta");
            String asignatura = "";
            String lab = "";
            String id_cpu = "";
            String id_mon = "";
            int id_accs = 0;
            int id_config = 0;
            int id_lab;
            int id_asignatura = 0;
            int id_registro = 0;
            int id_equipo = 0;
            int etiqueta = 0;

            %>
        </div>
        <div id="cuerpo2">
                <section class="lateral" id="menu">
                    
                    <a  class="boton_menu" onclick="iniciarSesion()">
                        <form style="text-align: center" action="IniciarSesion.jsp" name="formulario_in">
                        <input type="hidden" name="usuario" value="<%=usuario%>">
                        <input type="hidden" name="contra" value="<%=contra%>">
                        </form>
                        Inicio
                    </a>
                        <a class="boton_menu" href="RegistrarEquipo.jsp?id=<%=boleta%>">
                        Registrar Equipo
                    </a>
                    <a class="boton_menu"href="ReportarEquipo.jsp?id=<%=boleta%>">
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
                        <div class="text" id="centro">
                    <%
                    
                        Connection con = bd.Conexion();
                        Statement set = con.createStatement();
                        ResultSet re = null;
                        
                        try {
                        
                            re = set.executeQuery("Select * from mregistro_de_equipo where boleta = '" + boleta + "';");
                            
                            while (re.next()){
                            
                                id_registro = re.getInt("id_registro");
                                
                                id_equipo = bd.BuscarEntero("select * from mregistro_de_equipo where id_registro = '" + id_registro + "';", "id_equipo");
                                etiqueta = bd.BuscarEntero("select * from mequipo where id_equipo = '" + id_equipo + "';", "equipo_etiqueta");
                                id_asignatura = bd.BuscarEntero("select * from mregistro_de_equipo where id_registro = '" + id_registro + "';", "id_aignatura");
                                asignatura = bd.BuscarCadena("select * from casignatura where id_aignatura = '" + id_asignatura + "';", "asignatura");
                                id_lab = bd.BuscarEntero("select * from mequipo where id_equipo = '" + id_equipo + "';", "id_Lab");
                                lab = bd.BuscarCadena("select * from clab where id_Lab = '" + id_lab + "';", "laboratorio");
                                id_cpu = bd.BuscarCadena("select * from mequipo where id_equipo = '" + id_equipo + "';", "MCPU_serial_cpu");
                                id_mon = bd.BuscarCadena("select * from mequipo where id_equipo = '" + id_equipo + "';", "MMonitor_serial_monitor");
                                id_accs = bd.BuscarEntero("select * from mequipo where id_equipo = '" + id_equipo + "';", "id_accesorios");
                                id_config = bd.BuscarEntero("select * from mequipo where id_equipo = '" + id_equipo + "';", "id_config");
                                
                                %>
                    
                                <h3 class="sub_registro">Equipo <%=etiqueta%></h3>
                                <div class="campos2">
                                    <div class="campos"><p>Asignatura:</p><p><%=asignatura%></p></div>
                                    <div class="campos"><p>Laboratorio:</p><p><%=lab%></p></div>
                                    <div class="campos"><p>Serial CPU:</p><p><%=id_cpu%></p></div>
                                    <div class="campos"><p>Descripcion CPU:</p><p><%=bd.BuscarCadena("select * from mcpu where serial_cpu = '" + id_cpu + "';", "descripcion")%></p></div>
                                    <div class="campos"><p>Marca CPU:</p><p><%=bd.BuscarCadena("select * from cmarca where id_marca = '" + bd.BuscarEntero("select * from mcpu where serial_cpu = '" + id_cpu + "';", "id_marca") + "';", "marca")%></p></div>
                                    <div class="campos"><p>Serial monitor:</p><p><%=id_mon%></p></div>
                                    <div class="campos"><p>Descripcion monitor:</p><p><%=bd.BuscarCadena("select * from mmonitor where serial_monitor = '" + id_mon + "';", "descripcion")%></p></div>
                                    <div class="campos"><p>Marca monitor:</p><p><%=bd.BuscarCadena("select * from cmarca where id_marca = '" + bd.BuscarEntero("select * from mmonitor where serial_monitor = '" + id_mon + "';", "id_marca") + "';", "marca")%></p></div>
                                    <div class="campos"><p>Configuracon:</p><p><%=bd.BuscarCadena("select * from mconfirguracion where id_config = '"+id_config+"';","descripcion")%></p></div>
                                    <div class="campos"><p>Marca configuracion:</p><p><%=bd.BuscarCadena("select * from cmarca where id_marca = '" + bd.BuscarEntero("select * from mconfirguracion where id_config = '" + id_config + "';", "id_marca") + "';", "marca")%></p></div>
                                    
                                    
                                </div>
                    
                                <%
                                
                            
                            }
                        
                        } catch (SQLException e) {
                        
                            System.out.println("Error");
                            System.out.println(e.getMessage());
                        
                        }

                    %>
                    <div id="salir">
                                                        <div></div>
                                                    <a href="index.html" class="boton_aceptar">SALIR</a>
                                                    </div>
                        </div>
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
