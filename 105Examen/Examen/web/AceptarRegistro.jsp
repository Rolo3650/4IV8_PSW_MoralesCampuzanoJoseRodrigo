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
                        
                        String nombre, appat, apmat, fecha, sexo, grupo, usuario, contra;
                        int boleta, semestre;
                        boolean existe= false;
                        
                        nombre = request.getParameter("nombre");
                        appat = request.getParameter("appat");
                        apmat = request.getParameter("apmat");
                        fecha = request.getParameter("fecha");
                        sexo = request.getParameter("sexo");
                        boleta = Integer.parseInt(request.getParameter("boleta"));
                        semestre = Integer.parseInt(request.getParameter("semestre"));
                        grupo = request.getParameter("grupo");
                        usuario = request.getParameter("usuario");
                        contra = request.getParameter("contra");
                        
                        int id_fecha=0, id_anio = 0 , id_mes = 0, id_dia = 0, id_grupo = 0,id_sexo=0, id_semestre=0,id_img=0;
                        
                        
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
                                int dia = Integer.parseInt(fecha2[2]);
                                int mes = Integer.parseInt(fecha2[1]);
                                int anio = Integer.parseInt(fecha2[0]);
                                
                                
                                
                                if (existe == true) {
                                
                                    %>
                    
                                    <h1 class="text">Boleta o Usuario ya registrados, intenta con otro.</h1>
                    
                    <%
                                    
                                } else{

                                    existe = false;
                                    
                                    q = "select * from cdia;";
                                    re = set.executeQuery(q);

                                    
                                    while(re.next() && existe == false){

                                        if (re.getInt("dia") == dia){
                                            
                                            existe = true;


                                        }

                                    }

                                    if (existe != true){

                                        q = "insert into cdia(dia)value("+dia+");";
                                        set.executeUpdate(q);

                                    }

                                    q = "select * from cdia;";
                                    re = set.executeQuery(q);

                                    
                                    while(re.next()){

                                        if (re.getInt("dia") == dia){

                                            id_dia = re.getInt("id_dia");

                                        }

                                    }

                                    existe = false;
                                    
                                    q = "select * from cmes;";
                                    re = set.executeQuery(q);

                                    
                                    while(re.next() && existe == false){

                                        if (re.getInt("mes") == mes){

                                            
                                            existe = true;


                                        }

                                    }

                                    if (existe != true){

                                        q = "insert into cmes(mes)value("+mes+");";
                                        set.executeUpdate(q);

                                    }

                                    q = "select * from cmes;";
                                    re = set.executeQuery(q);

                                    
                                    while(re.next()){

                                        if (re.getInt("mes") == mes){

                                            id_mes = re.getInt("id_mes");

                                        }

                                    }
                                    
                                    existe = false;
                                    
                                    q = "select * from canio;";
                                    re = set.executeQuery(q);

                                    
                                    while(re.next() && existe == false){

                                        if (re.getInt("anio") == anio){

                                            
                                            existe = true;


                                        }

                                    }

                                    if (existe != true){

                                        q = "insert into canio(anio)value("+anio+");";
                                        set.executeUpdate(q);

                                    }

                                    q = "select * from canio;";
                                    re = set.executeQuery(q);

                                    
                                    while(re.next()){

                                        if (re.getInt("anio") == anio){

                                            id_anio= re.getInt("id_anio");

                                        }

                                    }

                                    System.out.println("\n"+id_dia + " "+ id_mes +  " " + id_anio+"\n");
                                    
                                    existe = false;
                                    
                                    q = "select * from mfecha;";
                                    re = set.executeQuery(q);

                                    
                                    while(re.next() && existe == false){

                                        if (re.getInt("id_anio") == id_anio && re.getInt("CMes_id_mes") == id_mes && re.getInt("CDia_id_dia") == id_dia ){

                                            
                                            existe = true;


                                        }

                                    }

                                    if (existe != true){

                                        q = "insert into mfecha(id_anio,CMes_id_mes,CDia_id_dia,Chora_id_hora)value("+id_anio+","+id_mes+","+id_dia+",1);";
                                        set.executeUpdate(q);

                                    }

                                    q = "select * from mfecha;";
                                    re = set.executeQuery(q);

                                    
                                    while(re.next()){

                                        if (re.getInt("id_anio") == id_anio && re.getInt("CMes_id_mes") == id_mes && re.getInt("CDia_id_dia") == id_dia ){

                                            id_fecha= re.getInt("id_fecha");

                                        }

                                    }

                                    System.out.println("\n"+id_fecha+"\n");

                                    existe = false;
                                    
                                    q = "select * from cgrupo;";
                                    re = set.executeQuery(q);

                                    
                                    while(re.next() && existe == false){

                                        if (re.getString("grupo").equals(grupo)){

                                            
                                            existe = true;


                                        }

                                    }

                                    if (existe != true){
                                        
                                        
                                        q = "insert into cgrupo(grupo)value('"+grupo+"');";
                                        set.executeUpdate(q);

                                    }

                                    q = "select * from cgrupo;";
                                    re = set.executeQuery(q);

                                    
                                    while(re.next()){

                                        if (re.getString("grupo").equals(grupo)){

                                            id_grupo= re.getInt("id_grupo");

                                        }

                                    }

                                    System.out.println("\n"+id_grupo+"\n");

                                    if (sexo.equals("femenino")){

                                        id_sexo = 2;

                                    } else{

                                        id_sexo =1;

                                    }

                                    System.out.println("\n"+id_sexo+"\n");

                                    if (semestre == 4){

                                        id_semestre = 1;

                                    }

                                    System.out.println("\n"+id_semestre+"\n");

                                    q = "select * from mimg;";
                                    re = set.executeQuery(q);

                                    while(re.next()){

                                        id_img = re.getInt("id_img");

                                    }
                                    
                                    id_img++;

                                    String ruta = "ImgAlumno/img"+id_img+".png";

                                    System.out.println(ruta);

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
                    <a href="RegistrarAlumno.jsp" id="ins1"><button class="boton_aceptar">Regresar</button></a>
                </div>
            <div class="lateral">
                    
                </div>
                
        </div>
            
            
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
    <link rel="stylesheet" href="CSS/style1.css"/>
</html>
