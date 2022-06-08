<%-- 
    Document   : registrarse
    Created on : 24/05/2022, 04:08:58 PM
    Author     : 52552
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="VerificarRegistro" method="post">
            <p>Nombre: <input type="texte" name="nombre"></p>
            <p>Apellido paterno: <input type="text" name="apellido_paterno"></p>
            <p>Apellido materno: <input type="text" name="apellido_materno"></p>
            <p>Fecha de nacimiento: <input type="date" name="fecha"></p>
            <p>Sexo: <input type="radio" name="sexo" value="masculino">Masculino <input type="radio" name="sexo" value="femenino">Femenino</p>
            <p>Niveles: <input type="number" name="niveles"></p>
            <p>Correo: <input type="text" name="correo"></p>
            <p>Contra: <input type="texte" name="contra"></p>
            <p>Tipo usuario: <input type="number" name="tipo_usuario"></p>
            <input type="submit">
        </form>
    </body>
</html>
