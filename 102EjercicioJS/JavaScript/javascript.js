
function problema_1(){

    var capital = document.querySelector('#capital_i').value;
    var periodo_meses = document.querySelector('#periodo_i').value;
    var interes_mensual = 1 + 2/100;

    var utilidad = capital

    for (i = 1; i <= periodo_meses; i ++){

        utilidad *= interes_mensual

    };

    utilidad = utilidad.toFixed(2);

    document.querySelector('#output-1').textContent = '$' + utilidad;

}

function problema_2(){

    var sueldo_mensual = document.querySelector('#sueldo_i').value;
    var ventas_realizadas = document.querySelector('#ventas_i').value;
    var interes_mensual = 10/100;

    var bono_individual = sueldo_mensual * interes_mensual;
    var bono_final = bono_individual * ventas_realizadas;

    var sueldo_final = parseFloat(sueldo_mensual) + parseFloat(bono_final);
    sueldo_final = sueldo_final.toFixed(2);


    document.querySelector('#output-2').textContent = '$' + sueldo_final;

}

function problema_3(){

    var importe_original = document.querySelector('#importe_i').value;
    var interes_descuento = 15/100;

    var importe_final = parseFloat(importe_original) - parseFloat(importe_original * interes_descuento);

    importe_final = importe_final.toFixed(2);

    document.querySelector('#output-3').textContent = '$' + importe_final;

}

function problema_4(){

    var calificacion_ordinaria_1 = document.querySelector('#calificacion_1').value;
    var calificacion_ordinaria_2 = document.querySelector('#calificacion_2').value;
    var calificacion_ordinaria_3 = document.querySelector('#calificacion_3').value;
    var examen_final = document.querySelector('#examen').value;
    var trabajo_final = document.querySelector('#trabajo').value;

    var promedio_ordinario = (parseInt(calificacion_ordinaria_1) + parseInt(calificacion_ordinaria_2) + parseInt(calificacion_ordinaria_3))/3;
    var porcentaje_promedio_ordinario = promedio_ordinario * (55/100);
    var porcentaje_examen_final = examen_final * (30/100);
    var porcentaje_trabajo_final = trabajo_final * (15/100);
    
    var promedio_final = parseFloat(porcentaje_promedio_ordinario) + parseFloat(porcentaje_examen_final) + parseFloat(porcentaje_trabajo_final);

    promedio_final = promedio_final.toFixed(2);

    document.querySelector('#output-4').textContent = promedio_final;

}

function problema_5(){

    var cantidad_hombres = document.querySelector('#hombres').value;
    var cantidad_mujeres = document.querySelector('#mujeres').value;

    var cantidad_de_personas = parseInt(cantidad_hombres) + parseInt(cantidad_mujeres);
    var porcentaje_de_hombres = (cantidad_hombres * 100)/cantidad_de_personas;
    var porcentaje_de_mujeres = (cantidad_mujeres * 100)/cantidad_de_personas;

    porcentaje_de_hombres = porcentaje_de_hombres.toFixed(2);
    porcentaje_de_mujeres = porcentaje_de_mujeres.toFixed(2);

    document.querySelector('#output-5').textContent = porcentaje_de_hombres + '% hombres, ' + porcentaje_de_mujeres + '% mujeres';

}

function problema_6(){

    var patron = /^\d{2}\/\d{2}\/\d{4}$/;
    var fecha_nacimiento = document.querySelector('#fecha_n').value;
    var fecha_actual = document.querySelector('#fecha_a').value;

    if(patron.test(fecha_nacimiento) == true && patron.test(fecha_actual) == true){ 

        var edad = [0,0,0]

        fecha_nacimiento = fecha_nacimiento.split('/');
        fecha_actual = fecha_actual.split('/');

        for(i = 0; i < 3; i++){

            edad[i] = parseInt(fecha_actual[i]) - parseInt(fecha_nacimiento[i]); 

        };

        edad[2] -= 1;

        if((fecha_nacimiento[1] == fecha_actual[1] && fecha_nacimiento[0] <= fecha_actual[0]) || (fecha_nacimiento[1] < fecha_actual[1])){

            edad[2] += 1

        };

        document.querySelector('#output-6').textContent = edad[2] + ' años';
    } else {

        alert("Ingrese el formato indicado con las diagonales")

    }

}