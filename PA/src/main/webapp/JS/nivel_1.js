/*=================================================================================Canvas=============================================================*/
const canvas = document.querySelector('canvas');
const c = canvas.getContext('2d');

const dialogoM = document.getElementById('dialogoM');
const dialogoL = document.getElementById('dialogoL');
const dialogoJ = document.getElementById('dialogoJ');
const formulario = document.getElementById('formulario');

const preguntas = document.getElementById('1P');
const cerrar = document.getElementById('Cerrar');
const siguienteL = document.getElementById('SiguienteL');
const siguientF = document.getElementById('SiguienteF');

cerrar.addEventListener('click', () =>{
    dialogoM.classList.add('display');
    dialogoL.classList.add('display');
    dialogoJ.classList.add('display');
    preguntas.classList.add('display');
})

siguienteL.addEventListener('click', () =>{
    dialogoL.classList.remove('display')
    dialogoL.classList.add('show')
    dialogoM.classList.add('display');
})

siguientF.addEventListener('click', () =>{
    dialogoL.classList.add('display')
    preguntas.classList.remove('display')
    preguntas.classList.add('show')
    formulario.classList.add('show')
})

canvas.width = window.innerWidth
canvas.height = window.innerHeight

/*=================================================================================CLASES=============================================================*/
const gravity = 0.5;
class Player{
    constructor(){
        this.speed = 7
        this.position = {
            
            x: 100,
            y: 100
        }
        this.velocity = {
            x: 0,
            y: 0
        }

        this.width = 66
        this.height = 150

        const image = new Image()
        image.src = 'IMG/LILY/breath_corregida.png'

        const izquierda = new Image()
        izquierda.src = 'IMG/LILY/breath_corregid_Izquierda.png'

        const Cderecha = new Image()
        Cderecha.src = 'IMG/LILY/caminar_Corregido.png'

        const Cizquierda = new Image()
        Cizquierda.src = 'IMG/LILY/caminar_CorregidoI.png'

        this.image = image
        this.frames = 0
        this.sprites = {
            stand: {
                derecha: image,
                cropWidth: 163,
                width: 66
            },
            run:{
                derecha: Cderecha,
                cropWidth: 341,
                //width:127.875
                //width: 131
                width: 66
            }
        }

        this.currentSprite = this.sprites.stand.derecha
        this.currentCropWidth = 66
        
    }

    draw(){
        //c.drawImage(this.currentSprite, this.currentCropWidth * this.frames, 0, this.currentCropWidth, 400, this.position.x, this.position.y, this.width, this.height)
        c.fillStyle = 'blue';
        c.fillRect(this.position.x, this.position.y, this.width, this.height)
    }

    update(){
        this.frames++
        if(this.frames > 60) this.frames = 0

        this.draw()
        this.position.x += this.velocity.x;
        this.position.y += this.velocity.y;

        if(this.position.y + this.height + this.velocity.y <= canvas.height)
        this.velocity.y += gravity
    }
}

class Molly{
    constructor({ x, y }){
        this.position = {
            x,
            y
        }

        this.width = 131
        this.height = 400

        const parada = new Image()
        parada.src = 'IMG/MOLLY/molly_estatica.png'

        const hablando = new Image()
        hablando.src = 'IMG/MOLLY/molly_hablando_.png'

        this.frames = 0
        this.sprites = {
            estatica: {
                derecha: parada,
                cropWidth: 131,
                width: 131
            },
            hablando:{
                derecha: hablando,
                cropWidth: 341,
                //width:127.875
                width: 66
            }
        }

        this.currentSprite = this.sprites.estatica.derecha
        this.currentCropWidth = 131
    }

    draw(){
        c.drawImage(this.currentSprite, this.currentCropWidth * this.frames, 0, this.currentCropWidth, 400, this.position.x, this.position.y, this.width, this.height)
        //c.fillStyle = 'purple';
        //c.fillRect(this.position.x, this.position.y, this.width, this.height)
    }
    
}

class Dialogo{
    constructor({ x, y }){
        this.position = {
            x,
            y
        }

        this.width = 200
        this.height = 200
    }

    draw(){
        c.fillStyle = 'yellow';
        c.fillRect(this.position.x, this.position.y, this.width, this.height)
    }
}

class Platform {
    constructor({ x, y }){
        this.position = {
            x,
            y
        }

        const image = new Image()
        image.src = 'IMG/VideoJuego/Plataformas/Plataforma_Nivel_1.png'

        this.image = image
        this.width = 580
        this.height = 125
        this.permitirSalto 
    }

    draw(){
        
        c.drawImage(this.image, this.position.x, this.position.y)
    }

    colision(){
        if (player.position.x + player.width > this.position.x && player.position.x < this.position.x + this.width && player.position.y < this.position.y + this.height && player.position.y + player.height > this.position.y){
            console.log('Hola')
            this.S=1
        }else{
            this.S=0
        }
        
    }

}

class Fondo {
    constructor({ x, y }){
        this.position = {
            x,
            y
        }

        const image = new Image()
        image.src = 'IMG/VideoJuego/Fondos/Sky.png'

        this.image = image
        this.width = 11643
        this.height = 732
    }

    draw(){
        
        c.drawImage(this.image, this.position.x, this.position.y)
    }
}

class T1 {
    constructor({ x, y }){
        this.position = {
            x,
            y
        }

        const image = new Image()
        image.src = 'IMG/VideoJuego/Plataformas/Arboles.png'

        this.image = image
        this.width = 512
        this.height = 512
    }

    draw(){
        
        c.drawImage(this.image, this.position.x, this.position.y)
    }
}


class T2 {
    constructor({ x, y }){
        this.position = {
            x,
            y
        }

        const image = new Image()
        image.src = 'IMG/VideoJuego/Plataformas/Plataforma_Nivel_1_Fondo.png'

        this.image = image
        this.width = 512
        this.height = 512
    }

    draw(){
        
        c.drawImage(this.image, this.position.x, this.position.y)
    }
}


/*
class T3 {
    constructor({ x, y }){
        this.position = {
            x,
            y
        }

        const image = new Image()
        image.src = 'IMG/INSTRUCCIONES/t3.png'

        this.image = image
        this.width = 512
        this.height = 512
    }

    draw(){
        
        c.drawImage(this.image, this.position.x, this.position.y)
    }
}
*/

class Peligro {
    constructor({ x, y }){
        this.position = {
            x,
            y
        }

        const image = new Image()
        image.src = 'IMG/INSTRUCCIONES/Peligro.png'

        this.image = image
        this.width = 0
        this.height = 0
    }

    draw(){
        
        c.drawImage(this.image, this.position.x, this.position.y)
    }
}

/*===============================================================================CONSTANTES=============================================================*/

let player = new Player()

    let platforms = [new Platform({
        x: 0, y: 500
    }), new Platform({
        x:580, y:850
    }),new Platform({
        x:1160, y:850
    }),new Platform({
        x:1740, y:850
    }),new Platform({
        x:2320, y:850
    }),new Platform({
        x:2900, y:850
    }),new Peligro({
        x:3580,
        y:850
    }), new T2({
        x: 0, y: 625
    }),new Platform({
        x:3800, y:850
    }),new Platform({
        x:4380, y:850
    }),new Platform({
        x:5360, y: 750
    }),new Platform({
        x:6250, y: 750
    }),new Platform({
        x:6520, y: 750
    })]


    const posicionYP = platforms.filter(Platform => Platform.height)


    let molly = [new Molly({
        x:1000, y:450
    })]

    
    let fondo = [
        new Fondo({
            x:0,
            y:1
        }),
        new Fondo({
            x:0,
            y:500
        }),
        new T1({
            x:580,
            y:200
        }),
        new T1({
            x:1740,
            y:200
        }),
        new T1({
            x:2900,
            y:200
        })
    ]

    let dialogo = [
        new Dialogo({
            x:4400,
            y:850
        })
    ]

const keys = {
    right:{
        pressed: false
    },
    left:{
        pressed: false
    },
    space:{
        pressed: false
    }
}

let scrollOffset = 0


function init(){

    dialogos.classList.remove('show');
    player = new Player()
    platforms = [new Platform({
        x: 0, y: 500
    }), new Platform({
        x:580, y:850
    }),new Platform({
        x:1160, y:850
    }),new Platform({
        x:1740, y:850
    }),new Platform({
        x:2320, y:850
    }),new Platform({
        x:2900, y:850
    }),new Peligro({
        x:3580,
        y:850
    }),new Platform({
        x:3800, y:850
    }),new Platform({
        x:4380, y:850
    }),new Platform({
        x:5360, y: 750
    }),new Platform({
        x:6250, y: 750
    }),new Platform({
        x:6520, y: 750
    }), new T2({
        x: 0, y: 625
    })]

    molly = [new Molly({
        x:4400, y:450
    })]

    fondo = [
        new Fondo({
            x:0,
            y:1
        }),
        new Fondo({
            x:0,
            y:500
        }),
        new T1({
            x:580,
            y:200
        }),
        new T1({
            x:1740,
            y:200
        }),
        new T1({
            x:2900,
            y:200
        })]

    dialogo = [
        new Dialogo({
            x:4400,
            y:850
        })
    ]

    scrollOffset = 0
}

/*================================================================================MOVIMIENTO=============================================================*/

function animate(){
    requestAnimationFrame(animate)
    c.fillStyle = '#ffff'
    c.fillRect(0,0, canvas.width, canvas.height)
    

    fondo.forEach(fondo =>{
        fondo.draw()
    })

    platforms.forEach((platform) => {
        platform.draw()
    })

    molly.forEach((molly) =>{
        molly.draw()
    })

    dialogo.forEach((dialogo) =>{
        dialogo.draw()
    })

    player.update()


    /*CONTROLES*/

    if (keys.right.pressed && player.position.x < 400){
        player.velocity.x = player.speed
    }else if ((keys.left.pressed && player.position.x > 100) || keys.left.pressed && scrollOffset === 0 && player.position.x > 0) {
        player.velocity.x =-player.speed
    }else {
        player.velocity.x = 0
    
        if(keys.right.pressed){
            scrollOffset += player.speed
            platforms.forEach((platform) => {
                platform.position.x -= player.speed
        })
            fondo.forEach(fondo =>{
                fondo.position.x -= player.speed * 0.66
            })

            molly.forEach(molly =>{
                molly.position.x -= player.speed
            })
        }else if (keys.left.pressed && scrollOffset >0){

            scrollOffset -= player.speed
            platforms.forEach((platform) => {
                platform.position.x += player.speed
            })
            
            fondo.forEach(fondo =>{
                fondo.position.x += player.speed * 0.66
            })

            molly.forEach(molly =>{
                molly.position.x += player.speed
            })
        }
    }

platforms.forEach((platform) => {
    if(player.position.y + player.height <= platform.position.y && player.position.y + player.height + player.velocity.y >= platform.position.y && player.position.x + player.width >= platform.position.x && player.position.x <= platform.position.x + platform.width){
        player.velocity.y = 0
    }
    })
    //Win Condition
    if (scrollOffset > 2000){
    }
    //Lose Condition
    if(player.position.y > canvas.height){
        console.log('PERDISTE BUU')
        init()
    }
    molly.forEach((molly) =>{
        if (player.position.x + player.width > molly.position.x && player.position.x < molly.position.x + molly.width && player.position.y < molly.position.y + molly.height && player.position.y + player.height > molly.position.y){
            console.log('Hola')
            this.S=1
        }else{
            this.S=0
        }
    })
    if (S === 1 && keys.space.pressed === true){
        //alert('Bienvenido a MOLLY... has realizado un dialogo correctamente, sigue tu camino y enfrentate a lo que espera')
        dialogoM.classList.add('show');
        preguntas.classList.add('display')
        dialogoL.classList.add('display')
        dialogoJ.classList.add('display')

        player.velocity.x = 0
        player.velocity.y = 0
        console.log('YA SE MOSTRÓ')

    }

}



animate()

/*=================================================================================CONTROLES=============================================================*/

addEventListener('keydown', ({ keyCode }) => {
    
    console.log(keyCode)
    switch (keyCode) {
        case 65: 
            console.log('left')
            keys.left.pressed = true
        break

        case 32: 
            console.log('spacebar')
            keys.space.pressed = true
        break

        case 68: 
            console.log('right')
            keys.right.pressed = true
            player.currentSprite = player.sprites.run.derecha
            player.currentCropWidth = player.sprites.run.cropWidth
            player.width = player.sprites.run.width
        break

        case 87: 
            //console.log('up')
            console.log(player.position.y)
            //console.log(posicionYP)
            //if(player.position.y + player.height <= platform.position.y && player.position.y + player.height + player.velocity.y >= platform.position.y && player.position.x + player.width >= platform.position.x && player.position.x <= platform.position.x + platform.width){
            //    player.velocity.y -= 15
            //permitirSalto()

            if(player.velocity.y === 0){
                player.velocity.y -= 15
            }
            break
    }
})

addEventListener('keyup', ({ keyCode }) => {
    
    console.log(keyCode)
    switch (keyCode) {
        case 65: 
            console.log('left')
            keys.left.pressed = false
        break

        case 32:
            console.log('spacebar')
            keys.space.pressed = false
        break

        case 68: 
            console.log('right')
            keys.right.pressed = false
        break

        case 87: 
            console.log('up')
                player.velocity.y -= 1
        break
    }
})