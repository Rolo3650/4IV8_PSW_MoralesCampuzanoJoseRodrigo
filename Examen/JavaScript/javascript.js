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
                total2 = Math.round(total1/12);
                let cuotafinal  = document.getElementById("output");
                cuotafinal.innerHTML = total2;
                alert("El precio total del vehículo es de : " + total1 + ", la cuota mensual es de: " + total1/12);

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
