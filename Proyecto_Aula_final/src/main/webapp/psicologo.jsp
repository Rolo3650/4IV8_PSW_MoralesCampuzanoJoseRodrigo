<%-- 
    Document   : psicologo
    Created on : 1/06/2022, 05:56:30 PM
    Author     : Alumno
--%>

<%@page import="Modelo.MExpediente"%>
<%@page import="Modelo.MPersona"%>
<%@page import="Control.BaseDeDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="IMG/LOGO.png">
    <script src="JS/salir.js"></script>
    <link rel="stylesheet" href="CSS/perfil.css">
    <script src="https://kit.fontawesome.com/8042365e74.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <title>Perfil</title>
</head>
    <header>
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

        correo = (String) sesionusu.getAttribute("correo");
            contra = (String) sesionusu.getAttribute("contra");

            BaseDeDatos bd = new BaseDeDatos();

            MPersona persona = bd.buscarPersona(correo, contra);
            MExpediente expediente = bd.buscarExpediente(persona.getId_expediente());

            %>
        <h2 class="logo">MOLLY</h2>
        <input type="checkbox" id="check">
        <label for="check" class="mostrar-menu">
            &#8801
        </label>
        <nav class="menu">
            <a href="index.html">Inicio</a>
            <a href="sobre_nosotros.jsp">Sobre nosotros</a>
            <a href="psicologo.jsp">Perfil</a>
            <a id="salir" onclick="salir()">Salir</a>
            <label for="check" class="esconder-menu">
                &#215
            </label>
        </nav>
    </header>

    <section class="seccion-perfil-usuario">
        <div class="perfil-usuario-header">
            <div class="perfil-usuario-portada">
                <div class="perfil-usuario-avatar">
                    <img src="USUARIO/usuario.png" alt="img-avatar">
                </div>
            </div>
        </div>
        <div class="perfil-usuario-body">
            <div class="perfil-usuario-bio">
                <h3 class="titulo"><span id=""><%=expediente.getNombre()%></span></h3>
                <p class="texto">Hola Soy <span id=""><%=expediente.getNombre() + " " + expediente.getApellido_paterno() + " " +
                        expediente.getApellido_materno()%></span> y este es mi perfil de MOLLY, Siempre trato de Salir adelante y mejora como persona</p>
            </div>
            <div class="perfil-usuario-footer">
                <ul class="lista-datos">
                    <li><i class="icono fas fa-envelope"></i> Correo Electronico: <%=persona.getCorreo()%><span id=""></span></li>
                    <li><i class="icono fas fa-venus-mars"></i> Sexo: <span id=""><%=expediente.getSexo()%></span></li>
                </ul>
                <ul class="lista-datos">
                    <li><i class="icono fas fa-calendar-alt"></i> Fecha nacimiento: <span id=""><%=expediente.getFecha_nacimiento()%></span></li>
                </ul>
            </div>
        </div>
    </section>

    <div class="container">
        <div class="botonera">
            <a href="Expedientes.jsp" class="saber-mas">Consular Expedientes</a>
        </div>
    </div>
                <form action="Salir_Sesion" method="post" name="Salir">
    </form>
    <%
        }
    %>
</body>
</html>