
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenido a nuestra empresa</h1>
        <br>
        <form method="post" name="registro" action="guardarEmpleado">
            
            <table border="2">
                
                <tr>
                    
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre"></td>
                    
                </tr>
                <tr>
                    
                    <td>Password:</td>
                    <td><input type="password" name="contra"></td>
                    
                </tr>
                <tr>
                    
                    <td>Email:</td>
                    <td><input type="email" name="email"></td>
                    
                </tr>
                <tr>
                    
                    <td>Pais:</td>
                    <td>
                        
                        <select name="pais">
                            
                            <option>México</option>
                            <option>India</option>
                            <option>Por ahí</option>
                            <option>Al que nadie quiere</option>
                            
                        </select>
                        
                    </td>
                    
                </tr>
                <tr>
                    
                    <td colspan="2">
                        
                        <input type="submit" value="Registrar Nuevo Empleado">
                        
                    </td>
                    
                </tr>
                
                
            </table>
            
        </form>
        <div>
            
            <a href="ConsultaEmpleados.jsp">Consultar Lista de empleados</a>
            <br>
            <a href="index.html">Regresar a menu principal</a>
            
        </div>
    </body>
</html>
