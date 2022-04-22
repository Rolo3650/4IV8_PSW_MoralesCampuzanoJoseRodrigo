

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
        </div>
        <%
            
            BaseDeDatos bd = new BaseDeDatos();
            
            int boleta = Integer.parseInt(request.getParameter("id"));
            
            int id_persona = bd.BuscarEntero("Select * from mpersona where boleta ="+boleta+";", "id_person");
            int id_img = bd.BuscarEntero("Select * from dpersona where id_persona ="+id_persona+";", "id_img");
            String usuario = bd.BuscarCadena("Select * from dpersona where id_persona ="+id_persona+";", "usuario");
            String contra = bd.BuscarCadena("Select * from dpersona where id_persona ="+id_persona+";", "contraseña");
            String ruta = bd.BuscarCadena("Select * from mimg where id_img ="+id_img+";", "ruta");
            
            String cod_cpu = request.getParameter("cod_cpu");
            String desc_cpu = request.getParameter("desc_cpu");
            int id_marca_cpu = Integer.parseInt(request.getParameter("marca_cpu"));
            
            String cod_mon = request.getParameter("cod_mon");
            String desc_mon = request.getParameter("desc_mon");
            int id_marca_mon = Integer.parseInt(request.getParameter("marca_mon"));
            
            String desc_acss = request.getParameter("desc_acss");
            int id_marca_acss = Integer.parseInt(request.getParameter("marca_acss"));
            
            String desc_conf = request.getParameter("desc_config");
            int id_marca_conf = Integer.parseInt(request.getParameter("marca_config"));
            
            int etiqueta = Integer.parseInt(request.getParameter("etiqueta"));
            int id_lab = Integer.parseInt(request.getParameter("lab"));
            int id_asignatura = Integer.parseInt(request.getParameter("asignatura"));
            
            String id_cpu = bd.InsertarCadenaYObtenerID(
                    "INSERT INTO `mydb`.`mcpu` (`serial_cpu`, `descripcion`, `id_marca`) VALUES ('"+cod_cpu+"', '"+desc_cpu+"', '"+id_marca_cpu+"');",
                    "select * from mcpu where serial_cpu = '" + cod_cpu + "';",
                    "serial_cpu");
            String id_mon = bd.InsertarCadenaYObtenerID("INSERT INTO `mydb`.`mmonitor` (`serial_monitor`, `descripcion`, `id_marca`) VALUES ('"+cod_mon+"', '"+desc_mon+"', '"+id_marca_mon+"');",
                    "select * from mmonitor where serial_monitor = '" + cod_mon + "';",
                    "serial_monitor");
            System.out.println("Error aqui" + id_mon);
            int id_accesorios = bd.InsertarEnteroYObtenerID("INSERT INTO `mydb`.`maccesorios` (`descripcion`, `id_marca`) VALUES ('"+desc_acss+"','"+id_marca_acss+"');",
                    "select * from maccesorios;",
                    "id_accesorios");
            int id_config = bd.InsertarEnteroYObtenerID("INSERT INTO `mydb`.`mconfirguraCION` (`descripcion`, `id_marca`) VALUES ('"+desc_conf+"', '"+id_marca_conf+"');",
                    "select * from mconfirguracion;",
                    "id_config");
            
            int id_equipo = bd.InsertarEnteroYObtenerID("INSERT INTO `mydb`.`mequipo` (`equipo_etiqueta`, `id_accesorios`, `id_Lab`, `id_config`, `MCPU_serial_cpu`, `MMonitor_serial_monitor`) VALUES ('"+etiqueta+"', '"+id_accesorios+"', '"+id_lab+"', '"+id_config+"', '"+id_cpu+"', '"+id_mon+"');",
                    "select * from mequipo;",
                    "id_equipo");
            
            int id_registro = 0; 
            id_registro = bd.InsertarEnteroYObtenerID("INSERT INTO `mydb`.`mregistro_de_equipo` (`boleta`, `id_aignatura`, `id_equipo`) VALUES ('"+boleta+"', '"+id_asignatura+"', '"+id_equipo+"');",
                    "select * from mregistro_de_equipo;",
                    "id_registro");

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
                    <a class="boton_menu">
                        Consultar Equipos
                    </a>
                    <a class="boton_menu">
                        Reportar Equipo
                    </a>
                    <a class="boton_menu">
                        Actualizar Registro
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

                        <section class="text">
                            <%
                            
                            if (id_registro != 0){

                            %>
                            <h1 class="text">Registro exitoso</h1>
                            <a onclick="iniciarSesion()" id="ins1"><button class="boton_aceptar">Regresar</button></a>
                            <%
                            
                                } else {

                            %>
                            <h1 class="text">Fallo al registrar equipo</h1>
                            <a onclick="iniciarSesion()" id="ins1"><button class="boton_aceptar">Regresar</button></a>
                            <%}%>
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