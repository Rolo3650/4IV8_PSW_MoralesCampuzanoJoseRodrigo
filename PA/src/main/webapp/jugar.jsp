<%-- 
    Document   : jugar
    Created on : 25/05/2022, 04:54:34 AM
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
    <link rel="stylesheet" href="CSS/style.css">
    <script src="https://kit.fontawesome.com/8042365e74.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <title>MOLLY</title>
</head>
<body>
    <%

            //primero vamos a saber si tiene una sesion
            String correo = "";
            String contra = "";
            HttpSession sesionusu = request.getSession();
            if(sesionusu.getAttribute("usuario") == null){
        
        %>

            <jsp:forward page="index.html">
                <jsp:param name="error" value="es obbligatorio tener una sesion activa"></jsp:param>
            </jsp:forward>
        
        <%

            } else { 

            %>
    <section id="Menu-Seleccion">
        <div class="contenedor-menu">
            <div class="titulo-menu"><h1 id="titulo-mo">MOLLY</h1></div>
            <div class="centrado"><div class="boton-jugar"><a href="gameplay.html"><h2>jugar</h2></a></div></div>
            <div class="centrado"><div class="boton-seleccionar-nivel"><a href="Seleccionar_nivel.jsp"><h2>seleccionar nivel</h2></a></div></div>
            <div class="centrado"><div class="boton-salir"><a href="index.html"><h2>salir</h2></a></div></div>
        </div>
    </section>
    <%
        }
    %>
</body>
</html>