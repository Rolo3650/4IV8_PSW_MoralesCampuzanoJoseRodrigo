<%-- 
    Document   : sobre_nosotros
    Created on : 25/05/2022, 04:40:12 AM
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
            <label for="check" class="esconder-menu">
                &#215
            </label>
        </nav>
    </header>
    <section id="equipo">
        <div class= "contenedor">
            <div>
                <img src="EQUIPO/Alejandro.jpg" alt="Sanchez Cano Alejandro">
                <h4>Sanchez Cano Alejandro</h4>
                <p>Desarrollador Front y Back-end</p>
                <a href="https://alejandrotrikitrakatelas33sanchezcano.github.io/4IV8_PSW_Sanchez_Cano_Alejandro/" class="saber-mas">Saber Mas</a>
            </div>
            <div>
                <img src="EQUIPO/Rodrigo.jpg" alt="Morales Campuzano José Rodrigo">
                <h4>Morales Campuzano José Rodrigo</h4>
                <p>Desarrollador Back-end</p>
                <a href="https://rolo3650.github.io/4IV8_PSW_MoralesCampuzanoJoseRodrigo/" class="saber-mas">Saber Mas</a>
            </div>
            <div>
                <img src="EQUIPO/Eldad.jpg" alt="Martinez Ovaldo Eldad Jacobo">
                <h4>Martínez Ovando Eldad Jacobo</h4>
                <p>Diseñador grafico</p>
                <a href="https://github.com/eldadmaar8" class="saber-mas">Saber Mas</a>
            </div>
            <div>
                <img src="EQUIPO/Daniela.jpeg" alt="Monroy Flores Daniela Alehtse">
                <h4>Monroy Flores Daniela Alehtse</h4>
                <p>Desarrollador Front-end</p>
                <a href="https://github.com/DmonroyFlores" class="saber-mas">Saber Mas</a>
            </div>
            <div>
                <img src="EQUIPO/Sajo.jpg" alt="Rodríguez Juárez Héctor Sajoni">
                <h4>Rodríguez Juárez Héctor Sajoni</h4>
                <p>Desarrollador Back-end</p>
                <a href="https://github.com/HectorSajoni" class="saber-mas">Saber Mas</a>
            </div>
        </div>
    </section>

    <section id="sobre">
        <div id="nosotros">
            <div>
                <h3>¿Como Nace MOLLY?</h3>
                <br>
                <br>
                <br>
                <p>Molly nace gracias a la necesidad de inovar la manera de representar la empatia y tiene el proposito de que el usuario que utilice este medio pueda tener una mejor calidad de convivencia con su entorno. </p>
            </div>
            <div>
                <h3>Misión</h3>
                <br>
                <br>
                <br>
                <p>Somos una  empresa formada por alumnos de nivel medio superiror que realiza aplicaciones a travez de equipos de computo y lenguajes de programación para brindar apoyo a la comunidad del CECyT 9.</p>
            </div>
            <div>
                <h3>Vision</h3>
                <br>
                <br>
                <br>
                <p>Nuestras metas a nivel empresarial es que podamos llegar a ser altamente competitiva  destacando en el sistema academico y posicionamiento dentro de una escala Intstitucional, del CECyT 9, obteniendo reconocimiento sobre nuestra inovación en el ambito educativo  posicionandonos como una empresa altamente confiable​</p>
            </div>
        </div>
    </section>
    <footer>
        <h3 class="titulo-final">&copy; MOLLY</h3>
    </footer>
</body>
</html>
