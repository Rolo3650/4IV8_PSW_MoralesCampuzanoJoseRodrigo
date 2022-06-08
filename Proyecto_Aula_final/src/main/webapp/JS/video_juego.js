/*=================================================================================Canvas=============================================================*/
const canvas = document.querySelector('canvas');
const c = canvas.getContext('2d');

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

        const image = new Image()
        image.src = 'IMG/VideoJuego/Plataformas/Plataforma_Tutorial.png'

        this.image = image
        this.frames = 0
        
        this.width = 40
        this.height = 54
    }

    draw(){
        c.fillStyle = 'blue';
        c.fillRect(this.position.x, this.position.y, this.width, this.height)
    }

    update(){
        this.draw()
        this.position.x += this.velocity.x;
        this.position.y += this.velocity.y;

        if(this.position.y + this.height + this.velocity.y <= canvas.height)
        this.velocity.y += gravity
    }
}

class Npc{
    constructor({ x, y }){
        this.position = {
            x,
            y
        }

        this.width = 40
        this.height = 54
    }

    draw(){
        c.fillStyle = 'purple';
        c.fillRect(this.position.x, this.position.y, this.width, this.height)
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
        image.src = 'IMG/VideoJuego/Plataformas/Plataforma_Tutorial.png'

        this.image = image
        this.width = 580
        this.height = 125
    }

    draw(){
        
        c.drawImage(this.image, this.position.x, this.position.y)
    }
}

class Fondo {
    constructor({ x, y }){
        this.position = {
            x,
            y
        }

        const image = new Image()
        image.src = 'IMG/VideoJuego/Fondos/Tutorial.png'

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
        image.src = 'IMG/INSTRUCCIONES/t1.png'

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
        image.src = 'IMG/INSTRUCCIONES/t2.png'

        this.image = image
        this.width = 512
        this.height = 512
    }

    draw(){
        
        c.drawImage(this.image, this.position.x, this.position.y)
    }
}

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
        x: 0, y: 850
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
    })]

    let npc = [new Npc({
        x:4400, y:795
    })]

    
    let fondo = [
        new Fondo({
            x:0,
            y:1
        }),
        new Fondo({
            x:0,
            y:850
        }),
        new T1({
            x:580,
            y:200
        }),
        new T2({
            x:1740,
            y:200
        }),
        new T3({
            x:2900,
            y:200
        }),
        
        
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

    player = new Player()
    platforms = [new Platform({
        x: 0, y: 850
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
    })]

    npc = [new Npc({
        x:4400, y:795
    })]

    fondo = [
        new Fondo({
            x:0,
            y:1
        }),
        new Fondo({
            x:0,
            y:850
        }),
        new T1({
            x:580,
            y:200
        }),
        new T2({
            x:1740,
            y:200
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

    npc.forEach((npc) =>{
        npc.draw()
    })

    player.update()

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

            npc.forEach(npc =>{
                npc.position.x -= player.speed
            })
        }else if (keys.left.pressed && scrollOffset >0){

            scrollOffset -= player.speed
            platforms.forEach((platform) => {
                platform.position.x += player.speed
            })
            
            fondo.forEach(fondo =>{
                fondo.position.x += player.speed * 0.66
            })

            npc.forEach(npc =>{
                npc.position.x += player.speed
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
    npc.forEach((npc) =>{
        if (player.position.x + player.width > npc.position.x && player.position.x < npc.position.x + npc.width && player.position.y < npc.position.y + npc.height && player.position.y + player.height > npc.position.y){
            console.log('Hola')
            this.S=1
        }else{
            this.S=0
        }
    })
    while (S === 1 && keys.space.pressed === true){
        alert('Bienvenido a MOLLY... has realizado un dialogo correctamente, sigue tu camino y enfrentate a lo que espera')
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
        break

        case 87: 
            console.log('up')
            player.velocity.y -= 15
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