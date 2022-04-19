<%-- 
    Document   : IniciarSesion
    Created on : 18/04/2022, 06:13:12 PM
    Author     : 52552
--%>

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
                        password = "Roja161203.";
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
                                        <a href="index.html" id="ins1"><button id="boton_aceptar">Regresar</button></a>
                                        </div>
                                        <div class="lateral"></div>
                                    </div>
        <%
                                    
                                } else{
                                
                                String nombre, appat, apmat, ruta;
                                int id_img = 0, id_fecha = 0, id_grupo = 0, id_sexo = 0, id_semestre = 0, id_rol =0, id_privilegio = 0;

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
                                
                                    %>

                                    
                                    
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
                
                <hr>
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
