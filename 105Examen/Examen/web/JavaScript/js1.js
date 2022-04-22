function registrar(){
    
    var nombre = document.formulario_ra.nombre.value;
    var appat = document.formulario_ra.appat.value;
    var fecha = document.formulario_ra.fecha.value;
    var apmat = document.formulario_ra.apmat.value;
    var usuario = document.formulario_ra.usuario.value;
    var boleta = document.formulario_ra.boleta.value;
    var grupo = document.formulario_ra.grupo.value;
    var contra = document.formulario_ra.contra.value;
    var semestre = document.formulario_ra.semestre.value;
    var sexo = document.formulario_ra.sexo.value;
    var turno = document.formulario_ra.turno.value;
    
    var archivo = document.formulario_foto.archivo.value;
    
    var cadena1 = /^[A-Za-z]+[\s+[A-Za-z]+]*$/;
    var cadena2 = /^[0-9]+$/;
    var cadena3 = /^[4]{1}[I]{1}[(V|M)]{1}[(0-9|10)]+$/;
    var cadena4 = /^[0-6]{1}[I]{1}[(V|M)]{1}[(0-9|10)]+$/;
    var cadena5 = /^[\w]+$/;
    var cadena6 = /^[0-9]+[\/][0-9]+[\/][0-9]+$/;
    
    var existe = true;
    
    if (!(cadena1.test(nombre)) || !(cadena1.test(appat)) || !(cadena1.test(apmat))){
        
        alert("Ingresa el nombre y apellidos con letras");
        existe = false;
        
    }
    
    if (!(cadena2.test(boleta))){
        
        alert("Ingresa la boleta con números positivos");
        existe = false;
        
    }
    
    if (fecha == "" || sexo == "" || semestre == "" || turno == "" || archivo == ""){
        
        alert("Ingresa todos los campos");
        existe = false;
        
    }
    
    if (!(cadena4.test(grupo))){
        
        alert("Ingresa el grupo como se solicita");
        existe = false;
        
    } else if (!(cadena3.test(grupo))){
        
        alert("Por el momento solo esta permitido que se registren alumnos de 4to semestre");
        existe = false;
        
    } 
    
    if (semestre != 4){
        
        alert("Por el momento solo esta permitido que se registren alumnos de 4to semestre")
        existe = false;
        
    }
    
    if (!(cadena5.test(usuario)) || !(cadena5.test(contra))){
        
        alert("Ingresa el usuario y contraseña sin espacios");
        existe = false;
        
    }
    
    if (existe == true){
        
        document.formulario_foto.submit();
        document.formulario_ra.submit();
        
    }
    
}

function iniciarSesion(){
    
    document.formulario_in.submit();
    
}