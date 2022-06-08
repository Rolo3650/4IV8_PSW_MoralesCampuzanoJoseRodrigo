<%@page import="Controlador.AccionesEmpleado"%>
<%@page import="modelo.Empleados"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : editarempleado
    Created on : 9/05/2022, 08:25:17 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            
            <form name="editar" method="post" action="actualizarempleado">
                
                <table border="2">
                    
                    <%
                    
                        int id = Integer.parseInt(request.getParameter("id"));
                        
                        Empleados e = AccionesEmpleado.buscarEmpleadoID(id);

                    %>
                    
                    <tr>
                        
                        <td>ID</td>
                        <td><input type="hidden" value="<%=e.getNombre()%>"></td>
                        
                    </tr>
                    <tr>
                        
                        <td>Nombre</td>
                        <td><input type="text"></td>
                        
                    </tr>
                    
                </table>
                
            </form>
            
        </div>
    </body>
</html>
