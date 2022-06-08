let estrellas = document.getElementById('estrellas');
let luna = document.getElementById('luna');
let mountains3 = document.getElementById('mountains3');
let mountains4 = document.getElementById('mountains4');
let river = document.getElementById('river');
let boat = document.getElementById('boat6');
let Titulo = document.getElementById('MOLLY');
window.onscroll = function(){
    let value = scrollY;
    estrellas.style.left = value + 'px';
    luna.style.top = value * 3 + 'px';
    mountains3.style.top = value * 1.5 + 'px';
    mountains4.style.top = value * 1.2 + 'px';
    river.style.top = value + 'px';
    boat.style.top = value + 'px';
    boat.style.left = value * 2+ 'px';
    Titulo.style.fontSize = value + 'px';
    console.log(value);
    if(scrollY >=67){
        Titulo.style.fontSize = 67 + 'px';
        Titulo.style.position = 'fixed';
        if(scrollY >=478){
            Titulo.style.display = 'none';
        }else{
            Titulo.style.display = 'block';
        }
    }
}