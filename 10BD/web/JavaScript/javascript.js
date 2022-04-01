function validarRegistro(){

    var nom = document.getElementById("nombre").value;
    var bol = document.getElementById("boleta").value;
    var appat = document.getElementById("appat").value;
    var apmat = document.getElementById("apmat").value;
    var tel = document.getElementById("telefono").value;

    var v1 = /^[A-Za-z]+$/
    var v2 = /^[0-9]+$/
    
    if (nom == "" && bol == "" && appat == "" && apmat == "" && tel == ""){

        alert("Ingresa todos los campos");

    }
    else if (!v1.test(nom)){

        alert("Ingresa el nombre con letras sin espacios");

    } else if (!v2.test(bol)){

        alert("Ingresa la boleta con numeros sin espacios");

    } else if (!v1.test(appat)){

        alert("Ingresa el apellido paterno con letras sin espacios");

    } else if (!v1.test(apmat)){

        alert("Ingresa el apellido materno con letras sin espacios");

    } else if (!v2.test(tel)){

        alert("Ingresa el telefono con numeros sin espacios");

    } else if (v1.test(nom) && v1.test(appat) && v1.test(apmat) && v2.test(bol) && v2.test(tel)){

        document.formulario.submit();

    }

}

function validarEliminacion(){

    var bol = document.getElementById("bol3").value;

    var v2 = /^[0-9]+$/
    
    if (bol == ""){

        alert("Ingresa todos los campos");

    } else if (!v2.test(bol)){

        alert("Ingresa la boleta con numeros sin espacios");

    } else if (v2.test(bol)){

        document.elimina.submit();

    }

}

function validarActualizacion(){

    var nom = document.getElementById("nombre2").value;
    var bol = document.getElementById("boleta2").value;
    var appat = document.getElementById("appat2").value;
    var apmat = document.getElementById("apmat2").value;
    var tel = document.getElementById("telefono2").value;

    var v1 = /^[A-Za-z]*$/
    var v2 = /^[0-9]*$/
    
    if (bol == "") {

        alert("Ingresa la boleta con numeros sin espacios");

    } else if (appat == "" && apmat == "" && nom == "" && tel == "") {

        alert("Ingresa el dato que se desea modificar");

    } else if (!v1.test(nom)){

        alert("Ingresa el nombre con letras sin espacios");

    } else if (!v2.test(bol)){

        alert("Ingresa la boleta con numeros sin espacios");

    } else if (!v1.test(appat)){

        alert("Ingresa el apellido paterno con letras sin espacios");

    } else if (!v1.test(apmat)){

        alert("Ingresa el apellido materno con letras sin espacios");

    } else if (!v2.test(tel)){

        alert("Ingresa el telefono con numeros sin espacios");

    } else if (v1.test(nom) && v1.test(appat) && v1.test(apmat) && v2.test(bol) && v2.test(tel)){

        document.formulario1.submit();

    }

}