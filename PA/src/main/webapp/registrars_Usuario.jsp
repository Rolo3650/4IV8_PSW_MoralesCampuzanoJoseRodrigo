<%-- 
    Document   : registrars_Usuario
    Created on : 25/05/2022, 05:08:22 AM
    Author     : 52552
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="IMG/LOGO.png">
    <link rel="stylesheet" href="CSS/registro.css">
    <script src="https://kit.fontawesome.com/8042365e74.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <title>Registro</title>
</head>
<body>
    <section class="registro_back">
        <form class="registrarse" action="RegistrarNuevoUsuario" onsubmit="checkInputs(this)" method="post">
            <h1>MOLLY</h1>

            <div class="contenido-registro">

                <div class="input-contenedor">
                    <i class="fas fa-user icon"></i>
                    <input type="text" placeholder="Nombre" name="nombre" id="nombre" required = "required">
                </div>

                <div class="input-contenedor" >
                    <i class="fas fa-user icon"></i>
                    <input type="text" placeholder="Apellido Paterno" name="appat" id="appat" required = "required">
                </div>

                <div class="input-contenedor" >
                    <i class="fas fa-user icon"></i>
                    <input type="text" placeholder="Apellido Materno" name="apmat" id="apmat" required = "required">
                </div>

                <div class="input-contenedor" >
                    <i class="fa-solid fa-envelope icon"></i>
                    <input type="email" placeholder="Correo Electronico" name="correo" id="correo" required = "required">
                </div>

                <div class="input-contenedor" >
                    <i class="fa-solid fa-key icon"></i>
                    <input type="password" placeholder="Contraseña" name="contra1" id="contra" required = "required">
                </div>

                <div class="input-contenedor" >
                    <i class="fa-solid fa-key icon"></i>
                    <input type="password" placeholder="Confirma Contraseña" name="contra2" id="contra" required = "required">
                </div>

                <div class="input-contenedor" >
                    <h3>Cumpleaños</h3>
                    <i class="fa-solid fa-cake-candles icon"></i>
                    <input type="date" name="fecha" id="fecha" required = "required" min="1922-05-24" max="2012-05-31">
                </div>
                <div class="input-contenedor" >
                    <h3>Sexo</h3>
                    <i class="fa-solid fa-venus-mars icon"></i>
                    <input type="radio" name="sexo" value="Masculino" id="1">
                    <label for="1">Masculino</label>
                    <input type="radio" name="sexo" value="Femenino" id="2">
                    <label for="2">Femenino</label>
                    
                </div>

                <input type="submit" class="saber-mas" value="Registrarse"></input>
                <p>¿Ya tienes una cuenta?<a class="link" href="registrar_Sesion.jsp">Iniciar Sesion</a></p>
            </div>
        </form>
    </section>
</body>
</html>
