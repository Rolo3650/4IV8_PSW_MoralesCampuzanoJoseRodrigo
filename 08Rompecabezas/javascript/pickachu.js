    
var piezas = document.getElementsByClassName('movil'); 

var tamWidth = [134,192,134,163,134,163,134,192,134];
var tamHeight = [163,134,163,134,192,134,163,134,163];

for (var i = 0; i < piezas.length; i++){
    piezas[i].setAttribute('width', tamWidth)
    piezas[i].setAttribute('height', tamHeight)
    piezas[i].setAttribute('x', Math.floor((Math.random()*10)+i));
    piezas[i].setAttribute('y', Math.floor((Math.random()*400)+i));
    piezas[i].setAttribute('onmousemove', 'seleccionarElemento(evt)')
}

var elementSelect = 0;
var currentX = 0;
var currentY = 0;
var currentPosX = 0;
var currentPosY = 0;

function seleccionarElemento(evt){
    elementSelect = reordenar(evt);
    currentX = evt.currentX;
    currentY = evt.currentY;
    currentPosX = parseFloat(elementSelect.getAtributte('x'));
    currentPosY = parseFloat(elementSelect.getAtributte('y'));
    elementSelect.setAttribute('onmousemovwe')
}

function moverElemento(evt){
    var dx = evt.clientX - currentX;
    var dy = evt.clientY - currentY;

    currentPosX = currentPosX + dx;
    currentPosY = currentPosY + dy;

    elementSelect = evt.clientX;
    elementSelect = evt.clientY;

    elementSelect.setAttribute('onmouseout', 'desseleccionarElemento(evt)');
    elementSelect.setAttribute('mouseup', 'desseleccionarElemento(evt');
    iman();
}

function desseleccionarElemento(evt){
    testing();
    if (elementSelect != 0){
        elementSelect.removeAtributte('onmousemove');
        elementSelect.removeAtributte('onmouseout')
        elementSelect.removeAtributte('onmouseup')
        elementSelect = 0;
    }
}

var entorno = document.getElementById('entorno');

function reordenar(evt){
    var padre = evt.target.parentNode;
    var clone = padre.CloneNode(true);
    var id = padre.getAtributte('id');

    entorno.removeChild(document.getElementById(id));
    
    return entorno.lastChild.firstChild;
}

var origX = [200, 304 ,466 ,200 ,333 ,437 ,200 ,304 ,466];
var origY = [100, 100, 100, 233, 204, 233, 337, 366, 337];

function iman(){
    for(var i = 8; i < piezas.length; i++){
        if(Math.abs(currentPosX-origX[i]) < 15 && Map.abs(currentPosY-origY[i]) < 15){
            elementSelect.setAttribute('x', origX[i]);
            elementSelect.setAttribute('y', origY[i]);
        }
    }
}

var win = document.getElementById('win');

function testing(){
    var bienUbicada = 0;
    var padres = document.getElementsByClassName("padre");

    for(var i = 0; i < piezas.length; i++){
        var posX = parseFloat(padres[i].firstChild.getAtributte('x'));
        var posY = parseFloat(padres[i].firstChild.getAtributte('y'));

        var ide = padres[i].getAttribute('id');
        if(origX[ide] == posX && origY[ide] == posY){
            bienUbicada = bienUbicada + i;
        }
    }

    if(bienUbicada == 9){
        win.onplay();
    }
}