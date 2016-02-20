//Reto #2

import UIKit

enum Velocidades : Int {
    case Apagado = 0,VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String)
    {
        let velocidadActual = velocidad
        if velocidad == Velocidades.Apagado {
            velocidad = Velocidades.VelocidadBaja
        }else if velocidad == Velocidades.VelocidadBaja {
            velocidad = Velocidades.VelocidadMedia
        }else if velocidad == Velocidades.VelocidadMedia {
            velocidad = Velocidades.VelocidadAlta
        }else if velocidad == Velocidades.VelocidadAlta {
            velocidad = Velocidades.VelocidadMedia
        }
        return (velocidadActual.rawValue, String(velocidadActual))
    }
}

var auto = Auto()

for var i = 0; i < 20; i++ {
    print(auto.cambioDeVelocidad())
}
