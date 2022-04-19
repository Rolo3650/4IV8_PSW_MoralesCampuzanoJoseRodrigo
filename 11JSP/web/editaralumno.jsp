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
            
            <form method="post" name="editar" action="actualizaralumno.jsp" >
                
                
                
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
                    
                    int id = Integer.parseInt(request.getParameter("id"));
                    
                    String q = "select * from alumnobatiz where boleta =" + id;
                    
                    set = con.createStatement();
                    
                    re = set.executeQuery(q);
                    
                    while (re.next()){
                    
                    %>
                    
                    <label></label>
                    <br>
                    <input type="hidden" name="id2" value="<%=re.getInt("boleta")%>">
                    <br>
                    <label></label>
                    <br>
                    <input type="text" name="nombre2" value="<%=re.getString("nombre")%>">
                    <br>
                    <label></label>
                    <br>
                    <input type="text" name="appat2" value="<%=re.getString("appat")%>">
                    <br>
                    <label></label>
                    <br>
                    <input type="text" name="apmat2" value="<%=re.getString("apmat")%>">
                    <br>
                    <label></label>
                    <br>
                    <input type="text" name="tel2" value="<%=re.getString("telefono")%>">
                    <br>
                    <input type="submit" value="Actualizar Datos">
                    <br>
                    <input type="reset" value="Borrar Datos">
                    
                    <%
                        }
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
            
            </form>
            
            <a href="index.html">Regresar a Principal</a>
            <br>
            <a href="registraralumno.jsp">Registrar Alumno</a>
    </body>
</html>
