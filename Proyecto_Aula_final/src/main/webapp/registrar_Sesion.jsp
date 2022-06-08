<%-- 
    Document   : registrar_Sesion
    Created on : 25/05/2022, 04:56:48 AM
    Author     : 52552
--%>

<%@page import="Modelo.MComentario"%>
<%@page import="Modelo.MReactivo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.MEscala"%>
<%@page import="Modelo.MExpediente"%>
<%@page import="Modelo.MPersona"%>
<%@page import="Control.BaseDeDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="IMG/LOGO.png">
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/perfil.css">
    <script src="https://kit.fontawesome.com/8042365e74.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <script src="JS/salir.js"></script>
    <title>MOLLY</title>
</head>
<body>
    <div class="centrado"></div>
    <header>
        <h2 class="logo">MOLLY</h2>
        <input type="checkbox" id="check">
        <label for="check" class="mostrar-menu">
            &#8801
        </label>
        <nav class="menu">
            <a href="index.html">Inicio</a>
            <a href="sobre_nosotros.jsp">Sobre nosotros</a>
            <a href="jugar.jsp">jugar</a>
            <a href="registrar_Sesion.jsp">Perfil</a>
            <a id="salir" onclick="salir()">Salir</a>
            <label for="check" class="esconder-menu">
                &#215
            </label>
        </nav>
    </header>
    <%

            //primero vamos a saber si tiene una sesion
            String correo = "";
            String contra = "";
            HttpSession sesionusu = request.getSession();
            if(sesionusu.getAttribute("usuario") == null){
        
        %>
    <section>
        <div class="iniciar_sesion">
            <div class="ilustracion">
                <img src="IMG/LILY/LILY.png" alt="LILY">
            </div>
            <div class="parametros">
                
                <div class="formulario">
                    <h1>MOLLY</h1>
                    <form action="Iniciar_Sesion" id="formulario_v" method="post">
                        <div class="input-contenedor">
                            <i class="fa-solid fa-user icon"></i>
                            <input type="text" placeholder="Correo" name="correo">
                        </div>
                        <div class="input-contenedor">
                            <i class="fas fa-key icon"></i>
                            <input type="password" placeholder="Contraseña" name="contra">
                        </div>
                        <input type="submit" value="Iniciar Sesion" class="enviar">
                    </form>
                </div>

                <div class="registrar">
                    <h2>¿No tienes una cuenta?</h2>
                    <a href="registrars_Usuario.jsp">Regístrate</a>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <h2 class="titulo-final">&copy; MOLLY</h2>
    </footer>
    <%
        } else {
        
            correo = (String) sesionusu.getAttribute("correo");
            contra = (String) sesionusu.getAttribute("contra");

            BaseDeDatos bd = new BaseDeDatos();

            MPersona persona = bd.buscarPersona(correo, contra);

            if (persona.getTipo_usuario() == 2){

                response.sendRedirect("psicologo.jsp");

}
            MExpediente expediente = bd.buscarExpediente(persona.getId_expediente());
            ArrayList<MEscala> escalas = bd.buscarEscalas(persona.getId_expediente());

    %>
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
                    <li><i class="icono fas fa-envelope"></i> Correo Electronico: <span id=""><%=persona.getCorreo()%></span></li>
                    <li><i class="icono fas fa-venus-mars"></i> Sexo: <span id=""><%=expediente.getSexo()%></span></li>
                </ul>
                <ul class="lista-datos">
                    <li><i class="icono fas fa-calendar-alt"></i> Fecha nacimiento: <span id=""><%=expediente.getFecha_nacimiento()%></span></li>
                </ul>
            </div>
        </div>
    </section>
                <%
                
                    for (int i = 0; i < escalas.size(); i++){
                        
                    MEscala escala = escalas.get(i);

                %>
                <br>
    <div class="container">
        <table class="table">
            <thead>
                <tr>
                    <th>Escala <span id=""><%=escala.getNombre_escala()%> (<%=escala.getTipo_escala()%>)</span></th>
                    <th>PT</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td data-label="Escala">Pregunta</td>
                    <td data-label="PT">Puntaje</td>
                </tr>
                <%
                
                    ArrayList<MReactivo> reactivos = bd.buscarReactivos(escala.getId_escala());
                    
                    for (int j = 0; j < reactivos.size(); j++){
                        
                        MReactivo reactivo = reactivos.get(j);

                %>
                <tr>
                    <td data-label="Escala"><%=reactivo.getPregunta()%></td>
                    <td data-label="PT"><%=reactivo.getValor()%></td>
                </tr>
                <%
                
                    }

                %>
                <tr>
                    <td data-label="Escala">Total (min = 7, max = 35) </td>
                    <td data-label="PT"><%=escala.getPuntaje()%></td>
                </tr>
            </tbody>
        </table>
    </div>
                <%

        }   

%>
    <div class="botonera" id="boton1">
        <a href="diagnostico.jsp" class="saber-mas">Ver Diagnostico</a>
    </div>
    <form action="Salir_Sesion" method="post" name="Salir">
    </form>
    
                <%
                    
}
    %>
    <br>
</body>
</html>