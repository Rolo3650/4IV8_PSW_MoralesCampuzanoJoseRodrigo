<%-- 
    Document   : Expedientes
    Created on : 2/06/2022, 02:17:41 PM
    Author     : Alumno
--%>

<%@page import="Modelo.MEscala"%>
<%@page import="Modelo.MExpediente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.MPersona"%>
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
    <link rel="stylesheet" href="CSS/Expedientes.css">
    <script src="https://kit.fontawesome.com/8042365e74.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <title>Expedientes</title>
</head>
<body>
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
            <a href="psicologo.jsp">Perfil</a>
            <label for="check" class="esconder-menu">
                &#215
            </label>
        </nav>
    </header>
    <main>
        <%
            
            BaseDeDatos bd = new BaseDeDatos();
        
            ArrayList<MPersona> personas = bd.listaPersonas();
            
            for (int i = 0; i < personas.size(); i++){
                
                MPersona persona = personas.get(i);
                MExpediente expediente = bd.buscarExpediente(persona.getId_expediente());
                ArrayList<MEscala> escalas = bd.buscarEscalas(persona.getId_expediente());
                
                int promedio_1 = bd.getPromedioEscala(escalas, "Toma de Perspectiva");
                int promedio_2 = bd.getPromedioEscala(escalas, "Fantasía");
                int promedio_3 = bd.getPromedioEscala(escalas, "Malestar Personal");
                int promedio_4 = bd.getPromedioEscala(escalas, "Preocupación Empática");

        %>
        <div class="cont-tarjeta">
           <div class="cont-tarjeta__logo">
               <img src="USUARIO/usuario.png">
               <h1><%=expediente.getNombre()%></h1>
               <p>Calification</p>
           </div>
           <div class="cont-tarjeta__iconos">
               <div class="div1">
                   <h3>PT</h3>
                   <p><span><%=promedio_1%></span></p>
               </div>
               <div class="div1">
                    <h3>ES</h3>
                    <p><span><%=promedio_2%></span></p>
               </div>
               <div class="div1">
                    <h3>EC</h3>
                    <p><span><%=promedio_3%></span></p>
                </div>
                <div class="div1">
                    <h3>PD</h3>
                    <p><span><%=promedio_4%></span></p>
                </div>
           </div>
           <article>
               <a href="Comentario.jsp?id=<%=persona.getId_expediente()%>" class="saber-mas">Consultar Expediente</a>
            </article>
          </div>
        <%
            
            }
        
        %>
      </main>
</body>
</html>