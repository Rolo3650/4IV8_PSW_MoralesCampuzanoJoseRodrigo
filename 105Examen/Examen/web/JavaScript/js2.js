function registrarEquipo(){
    
    var cod_cpu = document.formulario_re.cod_cpu.value;
    var desc_cpu = document.formulario_re.desc_cpu.value;
    var marca_cpu = document.formulario_re.marca_cpu.value;
    var cod_mon = document.formulario_re.cod_mon.value;
    var desc_mon = document.formulario_re.desc_mon.value;
    var marca_mon = document.formulario_re.marca_mon.value;
    var desc_acss = document.formulario_re.desc_acss.value;
    var marca_acss = document.formulario_re.marca_acss.value;
    var desc_config = document.formulario_re.desc_config.value;
    var marca_config = document.formulario_re.marca_config.value;
    var etiqueta = document.formulario_re.etiqueta.value;
    var lab = document.formulario_re.lab.value;
    var asignatura = document.formulario_re.asignatura.value;
    
    var cadena5 = /^[\w]+$/;
    
    if (!(cadena5.test(cod_cpu)) || !(cadena5.test(cod_mon))){
        
        alert("Ingresa todos los codigos seriales");
        
    } if(desc_cpu == "" || marca_cpu == "" || desc_mon == "" || marca_mon == "" || desc_acss == "" || marca_acss == "" || desc_config == "" || marca_config == "" || etiqueta == "" || lab == "" || asignatura == ""){
        
        alert("Ingresa todos los campos");
        
    } else {
        
        document.formulario_re.submit();
        
    }
    
}


