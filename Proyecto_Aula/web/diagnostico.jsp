<%-- 
    Document   : diagnostico
    Created on : 25/05/2022, 03:11:00 PM
    Author     : 52552
--%>

<%@page import="Modelo.MComentario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.MEscala"%>
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
    <link rel="stylesheet" href="CSS/diagnostico.css">
    <title>Evidencia</title>
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

                BaseDeDatos bd = new BaseDeDatos();
                
                correo = (String) sesionusu.getAttribute("correo");
                contra = (String) sesionusu.getAttribute("contra");


                MPersona persona = bd.buscarPersona(correo, contra);
                MExpediente expediente = bd.buscarExpediente(persona.getId_expediente());
                ArrayList<MEscala> escalas = bd.buscarEscalas(persona.getId_expediente());

                int promedio_1 = bd.getPromedioEscala(escalas, "Toma de Perspectiva");
                int promedio_2 = bd.getPromedioEscala(escalas, "Fantasía");
                int promedio_3 = bd.getPromedioEscala(escalas, "Malestar Personal");
                int promedio_4 = bd.getPromedioEscala(escalas, "Preocupación Empática");

                String cadena_1 = "";
                String cadena_2 = "";
                String cadena_3 = "";
                String cadena_4 = "";

                if (promedio_1 <= 16){

                    cadena_1 = "Muy pocas veces tiendes a entender el punto de vista de otra persona";

                } else if (promedio_1 > 16 && promedio_1 <= 25 ){

                    cadena_1 = "Regularmente tiendes a entender el punto de vista de otra persona";

                } else if (promedio_1 > 25){

                    cadena_1 = "La mayoria de las veces tiendes a entender el punto de vista de las demás personas";
                }

                if (promedio_2 <= 16){

                    cadena_2 = "Muy pocas veces tiendes a imaginarte en situaciones de fantasia";

                } else if (promedio_2 > 16 && promedio_2 <= 25 ){

                    cadena_2 = "Regularmente tiendes a imaginarte en situaciones de fantasia";

                } else if (promedio_2 > 25){

                    cadena_2 = "Tiendes muy seguido a imaginarte en situaciones de fantasia";
                }

                if (promedio_3 <= 16){

                    cadena_3 = "Muy pocas veces tiendes a reaccionar con sentimientos de ansiedad o malestar ante las experiencias negativas de otra persona";

                } else if (promedio_3 > 16 && promedio_3 <= 25 ){

                    cadena_3 = "Regularmente tiendes a reaccionar con sentimientos de ansiedad o malestar ante las experiencias negativas de otra persona";

                } else if (promedio_3 > 25){

                    cadena_3 = "Muchas  veces tiendes a reaccionar con sentimientos de ansiedad o malestar ante las experiencias negativas de otra persona";
                }

                if (promedio_4 <= 16){

                    cadena_4 = "Muy pocas veces tiendes a reaccionar con sentimientos de preocupacion, compacion y cariño ante las experiencias negativas de otros";

                } else if (promedio_4 > 16 && promedio_4 <= 25 ){

                    cadena_4 = "Regularmente tiendes a reaccionar con sentimientos de preocupacion, compacion y cariño ante las experiencias negativas de otros";

                } else if (promedio_4 > 25){

                    cadena_4 = "Muchas tiendes a reaccionar con sentimientos de preocupacion, compacion y cariño ante las experiencias negativas de otros";
                }

            %>
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
    <section class="tabla-escala">
        <table class="table">
            <caption>EXPEDIENTE</caption>
            <thead>
                <tr>
                    <th>Escala</th>
                    <th>Observaciones</th>
                    <th>Promedio</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td data-label="Escala">Toma de Perspectiva</td>
                    <td data-label="PT"><%=cadena_1%></td>
                    <td data-label="PT"><%=promedio_1%></td>
                </tr>
                <tr>
                    <td data-label="Escala">Fantasia</td>
                    <td data-label="PT"><%=cadena_2%></td>
                    <td data-label="PT"><%=promedio_2%></td>
                </tr>
                <tr>
                    <td data-label="Escala">Malestar Personal</td>
                    <td data-label="PT"><%=cadena_3%></td>
                    <td data-label="PT"><%=promedio_3%></td>
                </tr>
                <tr>
                    <td data-label="Escala">Preocupacrion Esmpatica</td>
                    <td data-label="PT"><%=cadena_4%></td>
                    <td data-label="PT"><%=promedio_4%></td>
                </tr>
            </tbody>
        </table>
        <br><br><br>
        <%
        
                

                ArrayList<MComentario> comentarios = bd.buscarComentario(persona.getId_expediente());

                for (int k = 0; k < comentarios.size(); k++){
                
                    MComentario comentario = comentarios.get(k);

                %>
                <p>Psocilogo dice: <%=comentario.getComentario()%></p>
                <%
                
}

        %>
    </section>
    <%
        }
    
    %>
</body>
</html>