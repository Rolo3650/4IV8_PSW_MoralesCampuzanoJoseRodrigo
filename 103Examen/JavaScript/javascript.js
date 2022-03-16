var texto1 = ""

function calcular(){
    
    var valorAutomovil = formulario.valorAutomovil.value;
    var porcentaje = formulario.cuotaInicial.value;
    var cuotaInicial = (porcentaje * valorAutomovil)/100;
    var meses = formulario.periodo.value;
    var interes = 3.96;
    var total1;
    var total2;

    if (valorAutomovil >= 100000 && valorAutomovil <= 1000000){
        
        if (porcentaje >= 10) {

            if (meses == 3 || meses == 6 || meses == 9 || meses == 12) {

                total1 = (valorAutomovil - cuotaInicial) * ((1 + (interes/100)) ** meses);
                total2 = Math.round((total1+cuotaInicial)/meses);
                let cuotafinal  = document.getElementById("output");
                cuotafinal.innerHTML = total2;
                alert("El precio total del vehículo es de : " + (total1 + cuotaInicial) + ", la cuota mensual es de: " + (total1 + cuotaInicial)/meses);
                let tabla = document.getElementById("tablavalores");
                texto1 += '<tr><td><p class="texto1">'+valorAutomovil+'</p></td><td><p class="texto1">'+porcentaje+' %</p></td><td><p class="texto1">'+meses+'</p></td><td><p class="texto1">3.94%</p></td><td><p class="texto1">'+total2+'</p></td></tr>';
                tabla.innerHTML = '<tr><td><p class="texto1">Valor de Automovil</p></td><td><p class="texto1">Cuota Inicial</p></td><td><p class="texto1">Periodo</p></td><td><p class="texto1">Interes</p></td><td><p class="texto1">Cuota Mensual</p></td></tr><tr><td><p class="texto2"><input class="input" type="number" name="valorAutomovil" id="valorAutomovil"></p></td><td><p class="texto2"><input class="input" type="number" name="cuotaInicial" id="cuotaIncial"></p></td><td><p class="texto2"><input class="input" type="number" name="meses" id="periodo"></p></td><td><p class="texto2">3,94%</p></td><td><p class="texto2" name="cuotafinal" id="output"></p></td></tr>'+texto1;

            } else {

                alert("El periodo de meses permitido es de 3, 6, 9 y 12 meses.")

            }

        } else{

            alert("El porcentaje de la cuota inicial debe ser mayor al 10% del valor total del vehículo.");

        }

    } else {

        alert("El valor total del vehículo debe estar entre el rango de 100,000.00 a 1,000,000.00.");

    }

}
