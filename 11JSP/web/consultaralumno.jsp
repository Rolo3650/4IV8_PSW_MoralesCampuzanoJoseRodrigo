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
        <table border="2">
            <thead>
                <tr>
                    <th>Boleta</th>
                    <th>Nombre</th>
                    <th>Apellido Paterno</th>
                    <th>Apellido Materno</th>
                    <th>Telefono</th>
                    <th>Editar</th>
                    <th>Borrar</th>
                </tr>
            </thead>
            <tbody>
                
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
                    
                    String q = "select * from alumnobatiz order by boleta asc";
                    
                    set = con.createStatement();
                    
                    re = set.executeQuery(q);
                    
                    while (re.next()){
                    
                    %>
                    
                    <tr>
                        <td><%=re.getInt("boleta")%></td>
                        <td><%=re.getString("nombre")%></td>
                        <td><%=re.getString("appat")%></td>
                        <td><%=re.getString("apmat")%></td>
                        <td><%=re.getString("telefono")%></td>
                        <td><a href="editaralumno.jsp?id=<%=re.getInt("boleta")%>">Editar</a></td>
                        <td><a href="borraralumno.jsp?id=<%=re.getInt("boleta")%>">Borrar</a></td>
                    </tr>
                    
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
            
            </tbody>
        </table>
            
            <a href="index.html">Regresar a Principal</a>
            <br>
            <a href="registraralumno.jsp">Registrar Alumno</a>
    </body>
</html>
