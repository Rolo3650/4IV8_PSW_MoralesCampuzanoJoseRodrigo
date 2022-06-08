

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link rel="stylesheet" href="./CSS/style1.css"/>
    <body>
        <div>
        <header>
            
            <img src="Img/img1.png" width="100" height="100" alt="img1"/>
            <h1 class="text">SISTEMA DE REGISTRO DE EQUIPOS DE COMPUTO PARA LABORATORIO</h1>
            <img src="Img/img2.png" width="65" height="100" alt="img2"/>

        </header>
        </div>
        
        <%
        
                        String usuario, contra;
                        usuario = request.getParameter("usuario");
                        contra = request.getParameter("contra");
                        
                        int id_usuario = 0;
                
                        Connection con = null;
                        Statement set = null;
                        ResultSet re= null;

                        String username, url, password, driver;
                        url = "jdbc:mysql://localhost/mydb";
                        username = "root";
                        password = "n0m3l0";
                        driver = "com.mysql.jdbc.Driver";
                        try{
            
                        Class.forName(driver);
                        con = DriverManager.getConnection(url,username,password);   

                            try{

                                set = con.createStatement();
                                
                                String q = "select * from dpersona;";
                                re = set.executeQuery(q);

                                while (re.next()){

                                    if (usuario.equals(re.getString("usuario")) && contra.equals(re.getString("contraseña"))){
                                        
                                        id_usuario = re.getInt("id_persona");
                                        
                                    }

                                }
                                
                                if (id_usuario == 0){
                                    
                                    %>
                                    <div id="cuerpo">
                                        <div class="lateral"></div>
                                        <div id="mensaje">
                                        <h1 class="text">Correo o contraseña incorrectos o no registados, intenta con de nuevo.</h1>
                                        <a href="index.html" id="ins1"><button class="boton_aceptar">Regresar</button></a>
                                        </div>
                                        <div class="lateral"></div>
                                    </div>
        <%
                                    
                                } else{
                                
                                String nombre="", appat="", apmat="", ruta = "", anio="", mes="", dia="", grupo="", sexo="", semestre="", rol="", privilegio="", boleta="";
                                int id_img = 0, id_fecha = 0, id_grupo = 0, id_sexo = 0, id_semestre = 0, id_rol =0, id_privilegio = 0, id_anio = 0 , id_mes = 0, id_dia = 0;

                                q = "select * from dpersona where id_persona = "+id_usuario+";";
                                re = set.executeQuery(q);

                                while (re.next()){

                                    nombre = re.getString("nombre");
                                    appat = re.getString("appat");
                                    apmat = re.getString("apmat");
                                    id_img = re.getInt("id_img");
                                    id_fecha = re.getInt("id_fecha");
                                    id_grupo = re.getInt("id_grupo");
                                    id_sexo = re.getInt("id_sexo");
                                    id_semestre = re.getInt("id_semestre");
                                    id_rol = re.getInt("id_rol");
                                    id_privilegio = re.getInt("id_privilegio");

                                    System.out.println("\n"+nombre+" "+appat+" "+apmat+" "+ id_img+" "+id_fecha+" "+id_sexo+" "+id_usuario+" "+id_semestre+" "+id_grupo+" "+usuario+" "+contra+" "+id_rol+" "+id_privilegio+"\n");
                                        
                                }
                                
                                q = "select * from mimg where id_img = "+Integer.toString(id_img)+";";
                                re = set.executeQuery(q);

                                while (re.next()) {
                                    
                                    ruta = re.getString("ruta");

                                    System.out.println("\n"+ruta+"\n");
                                        
                                    }
                                
                                q = "select * from mfecha where id_fecha = "+Integer.toString(id_fecha)+";";
                                re = set.executeQuery(q);
                                
                                while (re.next()) {
                                    
                                    id_anio = re.getInt("id_anio");
                                    id_mes = re.getInt("CMes_id_mes");
                                    id_dia = re.getInt("CDia_id_dia");


                                    System.out.println("\n"+id_anio+" "+id_mes+" "+id_dia+"\n");
                                        
                                    }
                                    
                                q = "select * from canio where id_anio = "+Integer.toString(id_anio)+";";
                                re = set.executeQuery(q);
                                
                                while (re.next()) {
                                    
                                    anio = Integer.toString(re.getInt("anio"));


                                    System.out.println("\n"+anio+"\n");
                                        
                                    }

                                q = "select * from cmes where id_mes = "+Integer.toString(id_mes)+";";
                                re = set.executeQuery(q);
                                
                                while (re.next()) {
                                    
                                    mes = Integer.toString(re.getInt("mes"));


                                    System.out.println("\n"+mes+"\n");
                                        
                                    }

                                q = "select * from cdia where id_dia = "+Integer.toString(id_dia)+";";
                                re = set.executeQuery(q);
                                
                                while (re.next()) {
                                    
                                    dia = Integer.toString(re.getInt("dia"));


                                    System.out.println("\n"+dia+"\n");
                                        
                                    }

                                q = "select * from cgrupo where id_grupo = "+Integer.toString(id_grupo)+";";
                                re = set.executeQuery(q);
                                
                                while (re.next()) {
                                    
                                    grupo = re.getString("grupo");


                                    System.out.println("\n"+grupo+"\n");
                                        
                                    }

                                q = "select * from csexo where id_sexo = "+Integer.toString(id_sexo)+";";
                                re = set.executeQuery(q);
                                
                                while (re.next()) {
                                    
                                    sexo = re.getString("sexo");


                                    System.out.println("\n"+sexo+"\n");
                                        
                                    }

                                q = "select * from csemestre where id_semestre = "+Integer.toString(id_semestre)+";";
                                re = set.executeQuery(q);
                                
                                while (re.next()) {
                                    
                                    semestre = Integer.toString(re.getInt("semestre"));


                                    System.out.println("\n"+semestre+"\n");
                                        
                                }
                                q = "select * from crol where id_rol = "+Integer.toString(id_rol)+";";
                                re = set.executeQuery(q);
                                
                                while (re.next()) {
                                    
                                    rol = re.getString("rol");


                                    System.out.println("\n"+rol+"\n");
                                        
                                    }
                                q = "select * from cprivilegio where id_privilegio = "+Integer.toString(id_privilegio)+";";
                                re = set.executeQuery(q);
                                
                                while (re.next()) {
                                    
                                    privilegio = re.getString("privilegio");


                                    System.out.println("\n"+privilegio+"\n");
                                        
                                    }

                                q = "select * from mpersona where id_person = "+Integer.toString(id_usuario)+";";
                                re = set.executeQuery(q);
                                
                                while (re.next()) {
                                    
                                    boleta = re.getString("boleta");


                                    System.out.println("\n"+boleta+"\n");
                                        
                                    }
                                    %>

                                    <div id="cuerpo2">
                                        <section class="lateral" id="menu">
             
                                            <a class="boton_menu" href="RegistrarEquipo.jsp?id=<%=boleta%>">
                                                Registrar Equipo
                                            </a>
                                            <a class="boton_menu"href="ConsultarEquipos.jsp?id=<%=boleta%>">
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
                                            
                                                <section class="text">
                                                    
                                   
                                                    
                                                    <br>
                                                    <h3 class="sub_registro">Informacion Personal</h3>
                                                    <hr class="lp2">
                                                    <p class="parrafo1">Nombre: <%= nombre %></p>
                                                    <p class="parrafo1">Apellido Paterno: <%= appat %></p>
                                                    <p class="parrafo1">Apellido Materno: <%= apmat %></p>
                                                    <p class="parrafo1">Sexo: <%= sexo %></p>
                                                    <p class="parrafo1">Fecha de nacimiento: <%= dia + "-" + mes + "-" + anio%></p>
                                                    
                                                    <br>
                                                    <h3 class="sub_registro">Informacion Academica</h3>
                                                    <hr class="lp2">
                                                    <p class="parrafo1">Boleta: <%= boleta %></p>
                                                    <p class="parrafo1">Semestre: <%= semestre %></p>
                                                    <p class="parrafo1">Grupo: <%= grupo %></p>
                                                    <p class="parrafo1">Rol: <%= rol %></p>
                                                    <p class="parrafo1">Privilegio: <%= privilegio %></p>
                                                    <div id="salir">
                                                        <div></div>
                                                    <a href="index.html" class="boton_aceptar">SALIR</a>
                                                    </div>
                                                </section>

                                        </section>
                                    </div>
                                    
                                    <%

                                }
                                
                            } catch(SQLException es) {

                                System.out.println("Error al consultar la base");
                                System.out.println(es.getMessage());
                                
                            }

                        } catch (Exception e) {

                                System.out.println("Error al conectar la base de datos");
                                System.out.println(e.getMessage());

                        }
                                
        
        %>
        
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
        
    </div>
    </body>
</html>
