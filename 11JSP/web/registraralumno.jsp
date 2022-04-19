<%-- 
    Document   : registraralumno
    Created on : 4/04/2022, 07:30:56 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" language="java" import="java.sql.*, java.util.*, java.text.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            //Incorporar Java
            Connection con = null;
            Statement set = null;
            ResultSet re= null;
            
            String username, url, password, driver;
            
            url = "jdbc:mysql://localhost/alumnos";
            username = "root";
            password = "n0m3l0";
            driver = "com.mysql.jdbc.Driver";
            
            try{
            
                Class.forName(driver);
                con = DriverManager.getConnection(url,username,password);
                
                try{
                    
                    String nom, appat, apmat, tel;
                    int bol;
                    
                    nom = request.getParameter("nombre");
                    appat = request.getParameter("appat");
                    apmat = request.getParameter("apmat");
                    tel = request.getParameter("tel");
                    bol = Integer.parseInt(request.getParameter("bol"));
                    
                    set = con.createStatement();
                    
                    String q = "Insert into alumnobatiz " +
                            "values (" + bol + ", '"+ nom + "', '" + appat + "', '" + apmat +"', '" + tel + " ')";
                    
                    int registro = set.executeUpdate(q);
                    
                    %>
                    
                    <h1>Registro Exitoso</h1>
                    
                    <%
                    
                } catch(SQLException es) {
                    
                    System.out.println("Error al registrar en la tabla");
                    System.out.println(es.getMessage());

                    %>
                    
                    <h1>Registro Faliido</h1>
                    
                    <%
                    
                }
            
        } catch (Exception e) {
            
            System.out.println("Error al conectar la base de datos");
            System.out.println(e.getMessage());

                   %>
                    
                    <h1>No conecto con la BD T_T</h1>
                    
                    <%
            
        }
            
            
            %>
            <a href="index.html">Regresar a Principal</a>
    </body>
</html>
