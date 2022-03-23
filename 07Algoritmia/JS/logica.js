
//problema 1

function problema1(){

    var p1_input = document.getElementById("p1-input").value;

    var p1_palabras1 = p1_input.split(" ");
    var p1_palabras2 = [];
    var resultado = "";

    for(i = (p1_palabras1.length-1); i > -1; i--){

        p1_palabras2.push(p1_palabras1[i]);

    };

    document.querySelector("#p1-output").textContent = p1_palabras2;

}


//problema 1

function problema2(){

    var p2_x1 = document.getElementById('p2-x1').value;
    var p2_x2 = document.getElementById('p2-x2').value;
    var p2_x3 = document.getElementById('p2-x3').value;
    var p2_x4 = document.getElementById('p2-x4').value;
    var p2_x5 = document.getElementById('p2-x5').value;
    var p2_y1 = document.getElementById('p2-y1').value;
    var p2_y2 = document.getElementById('p2-y2').value;
    var p2_y3 = document.getElementById('p2-y3').value;
    var p2_y4 = document.getElementById('p2-y4').value;
    var p2_y5 = document.getElementById('p2-y5').value;

    var resultado = (p2_x1 * p2_y1) + (p2_x2 * p2_y2) + (p2_x3 * p2_y3) + (p2_x4 * p2_y4) + (p2_x5 * p2_y5);


    document.querySelector('#p2-output').textContent = resultado; 

}

//problema 3

function problema3(){

    //definir un alfabeto
    var alfabeto = ['A', 'B', 'C', 'D', 'E', 
        'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 
        'N', 'Ñ', 'O', 'P', 'Q', 'R', 'S', 'T',
        'U', 'V', 'W', 'X', 'Y', 'Z'];

    //vamos a obtener la entrada de los datos
    var p3_input = document.querySelector('#p3-input').value;

    var p3_palabras = p3_input.split(',');

    //tengo que eliminar los espacios

    p3_palabras = p3_palabras.map(function (palabra){
        //crear una expresion que me recupere las palabras
        return palabra.replace(/\s/g, '').toUpperCase();
    });

    //tengo que calcular cuantos caracteres unicos hay
    var p3_res = '';
    
    p3_palabras.forEach(function (palabra, i){
        //separar las palabras actuales del array que 
        //contiene cada letra de dicha palabra
        var letras_unicas = [];
        var palabra_array = palabra.split('');

        //iteracion
        alfabeto.forEach(function (letra, J){
            //itero la palabra
            palabra_array.forEach(function (letras_palabras, k){

                //comprobar que la letra este dentro del alfabeto
                if(letras_palabras == letra){
                    //si la letra no la hemos contado
                    //la agregamos a un array para contar
                    //las letras unicas
                    if(letras_unicas.indexOf(letra)<0){
                        letras_unicas.push(letra);
                    }
                }
            });
        });
        p3_res += 'Palabra: ' + palabra + ' = ' + letras_unicas.length + '\n';
    });
    document.querySelector('#p3-output').textContent = p3_res;
   

}