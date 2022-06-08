<%-- 
    Document   : alumno_inicio
    Created on : 22/05/2022, 09:13:46 PM
    Author     : 52552
--%>

<%@page import="Modelo.MComentario"%>
<%@page import="Modelo.MReactivo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.MEscala"%>
<%@page import="Modelo.MExpediente"%>
<%@page import="Control.BaseDeDatos"%>
<%@page import="Modelo.MPersona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

                //si hay sesion
                correo = (String) sesionusu.getAttribute("correo");
                contra = (String) sesionusu.getAttribute("contra");

                BaseDeDatos bd = new BaseDeDatos();

                MPersona persona = bd.buscarPersona(correo, contra);
                MExpediente expediente = bd.buscarExpediente(persona.getId_expediente());
                
                String nombre = expediente.getNombre();
                String apellido_paterno = expediente.getApellido_paterno();
                String apellido_materno = expediente.getApellido_materno();
                String fecha_nacimiento = expediente.getFecha_nacimiento();
                String sexo = expediente.getSexo();
                int niveles = expediente.getNiveles();

                ArrayList<MEscala> escalas = bd.buscarEscalas(persona.getId_expediente());
        
        
        %>
        <p>Correo: <%=correo%></p>
        <p>Contra: <%=contra%></p>
        <p>Nombre: <%=nombre%></p>
        <p>Apellido Paterno: <%=apellido_paterno%></p>
        <p>Apellido Materno: <%=apellido_materno%></p>
        <p>Fecha de Nacimiento: <%=fecha_nacimiento%></p>
        <p>Sexo: <%=sexo%></p>
        <p>Niveles: <%=niveles%></p>
        <%
            
                for (int i = 0; i < escalas.size(); i++){
                    
                    MEscala escala = escalas.get(i);
                    
                    %>
                    
                    <br>
                    <p>Nombre de escala: <%=escala.getNombre_escala()%></p>
                    <p>Tipo de escala: <%=escala.getTipo_escala()%></p>
                    <p>Puntaje: <%=escala.getPuntaje()%></p>
                    
        <%
            
                    ArrayList<MReactivo> reactivos = bd.buscarReactivos(escala.getId_escala());
                    
                    for (int j = 0; j < reactivos.size(); j++){
                    
                        MReactivo reactivo = reactivos.get(j);
                        
                        %>
        
                    <br>
                    <p>Pregunta: <%=reactivo.getPregunta()%></p>
                    <p>Valor: <%=reactivo.getValor()%></p>
                        
                    <%
                        
                    }

                }

                ArrayList<MComentario> comentarios = bd.buscarComentario(persona.getId_expediente());
                
                for (int i = 0; i < comentarios.size(); i++){

                    MComentario comentario = comentarios.get(i);
                
                   %>
        
                    <br>
                    <p>Comentarios: <%=comentario.getComentario()%></p>
                        
                    <% 

                }
         
            }
        %>
    </bodyapellido_paterno
</html>
