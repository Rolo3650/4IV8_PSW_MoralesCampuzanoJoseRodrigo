<%-- 
    Document   : Inicio
    Created on : 16/05/2022, 08:47:22 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    //primero vamos a saber si tiene una sesion
    String usuario = "";
    HttpSession sesionusu = request.getSession();
    if(sesionusu.getAttribute("usuario") == null){
        
        %>

        <jsp:forward page="index.html">
            <jsp:param name="error" value="es obbligatorio tener una sesion activa"></jsp:param>
        </jsp:forward>
        
<%
        
    } else {

        //si hay sesion
        usuario = (String) sesionusu.getAttribute("usuario");

}

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        encabezado
        <h1>Si existe</h1>
        <%
        
            //si privilegio == 1
            /*
            quiero que salga la tabla de todos los eleentos de los reportes al equipo
            
            select equipo_etiqueta, lab_nom, marca_nom,cpu_serial,
            config_descripcionMause, config_descripcionTeclado, monitor_descripcion, config_descripcion, edoEquipoT_tipo, problema
            from equipo as eq
            inner join claboratorio as la
            ON (la.lab_id = eq.lab_id)
            inner joincmarca es ma 
            ON (eq.marca_id = ma.marca_id)
            inner join maccesorio as mac
            ON (eq.accesorio_id = mac.accesorio_id)
            inner join monitor as mo
            ON (eq.monitor_id = mo.monitor_id)
            inner join mcconfiguracion as con
            ON (eq.config_id = con.config_id)
            inner join cedoequipo as edo
            ON (eq.edoEquipo_id = edo.edoEqiopo_id)
            
            */
            
        %>
    </body>
</html>
