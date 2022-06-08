<%-- 
    Document   : registrar_persona
    Created on : 7/06/2022, 05:02:39 PM
    Author     : 52552
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar</title>
</head>
<body>
    <div class="formulario">
        <form action="" method="post" class="ralumno">
            <table>
                <th><h1>Registrarse</h1></th>
                <tr>
                    <td><p>Boleta:</p></td>
                    <td><input type="text" name="boleta" id="boleta" placeholder="Boleta" class="campos"></td>
                </tr>
                <tr>
                    <td><p>Nombre:</p></td>
                    <td><input type="text" name="nombre" id="nombre" placeholder="Nombre" class="campos"></td>
                </tr>
                <tr>
                    <td><p>Apellido Paterno:</p></td>
                    <td><input type="text" name="appat" id="appat" placeholder="Apellido Paterno" class="campos"></td>
                </tr>
                <tr>
                    <td><p>Apellido Materno:</p></td>
                    <td><input type="text" name="apmat" id="ampat" placeholder="Apellido Materno" class="campos"></td>
                </tr>
                <tr>
                    <td><p>Sexo:</p></td>
                    <td>
                        <select name="sepso" id="sepso">
                            <option value="hombre">Hombre</option>
                            <option value="mujer">Mujer</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><p>Fecha de Nacimiento</p></td>
                    <td><input type="date" name="fechanac" id="fechanac" class="campos"></td>
                </tr>
                <tr>
                    <td><p>Usuario:</p></td>
                    <td><input type="text" name="usuario" id="user" placeholder="Usuario" class="campos"></td>
                </tr>
                <tr>
                    <td><p>Contraseña:</p></td>
                    <td><input type="password" name="pass" id="pass" placeholder="Contraseña" class="campos"></td>
                </tr>
                <tr>
                    <td><p>Grupo:</p></td>
                    <td>
                        <select name="grupo" id="grupo">
                            <option value="4IV6">4IV6</option>
                            <option value="4IV7">4IV7</option>
                            <option value="4IV8">4IV8</option>
                            <option value="4IV9">4IV9</option>
                            <option value="4IV10">4IV10</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><button type="submit" class="boton">Registrarse</button></td>
                </tr>
                <tr>
                    <td><button type="reset" class="boton">Borrar Datos</button></td>
                </tr>
                <tr>
                    <td><a href="../Examen3/index.html">Regresar</a></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
