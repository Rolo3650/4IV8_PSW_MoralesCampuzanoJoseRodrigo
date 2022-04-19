<%-- 
    Document   : AceptarRegistro
    Created on : 18/04/2022, 02:48:43 AM
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
    <body>
        <div>

            <header>

                <img src="Img/img1.png" width="100" height="100" alt="img1"/>
                <h1 class="text">SISTEMA DE REGISTRO DE EQUIPOS DE COMPUTO PARA LABORATORIO</h1>
                <img src="Img/img2.png" width="65" height="100" alt="img2"/>

            </header>


        </div>
        <div id="cuerpo">
        
                
            <div class="lateral">
                    
                </div>
            <div id="mensaje">
                    
                    <%
                        
                        String nombre, appat, apmat, fecha, sexo, semestre, grupo, usuario, contra;
                        int boleta;
                        boolean existe= false;
                        
                        nombre = request.getParameter("nombre");
                        appat = request.getParameter("appat");
                        apmat = request.getParameter("apmat");
                        fecha = request.getParameter("fecha");
                        sexo = request.getParameter("sexo");
                        boleta = Integer.parseInt(request.getParameter("boleta"));
                        semestre = request.getParameter("semestre");
                        grupo = request.getParameter("grupo");
                        usuario = request.getParameter("usuario");
                        contra = request.getParameter("contra");
                        
                        System.out.println("\n"+nombre+" "+appat+" "+apmat+" "+fecha+" "+sexo+" "+boleta+" "+semestre+" "+grupo+" "+usuario+" "+contra+"\n");
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
                                
                                String q = "select * from mpersona;";
                                re = set.executeQuery(q);

                                while (re.next()){

                                    if (boleta == re.getInt("boleta")){
                                        
                                        existe = true;
                                        
                                    }

                                }
                                
                                q = "select * from dpersona;";
                                re = set.executeQuery(q);
                                
                                while (re.next()){
                                    
                                    if (usuario.equals(re.getString("usuario"))){
                                        
                                        existe = true;
                                        
                                    }

                                }
                                
                                String [] fecha2 = fecha.split("-");
                                int anio = Integer.parseInt(fecha2[0]);
                                int mes = Integer.parseInt(fecha2[0]);
                                int dia = Integer.parseInt(fecha2[0]);
                                
                                
                                
                                if (existe == true) {
                                
                                    %>
                    
                                    <h1 class="text">Boleta o Usuario ya registrados, intenta con otro.</h1>
                    
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
                    <a href="RegistrarAlumno.jsp" id="ins1"><button id="boton_aceptar">Regresar</button></a>
                </div>
            <div class="lateral">
                    
                </div>
                
        </div>
            
            
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
    <link rel="stylesheet" href="CSS/style1.css"/>
</html>
