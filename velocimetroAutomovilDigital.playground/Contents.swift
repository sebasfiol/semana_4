//: Velocímetro de un automóvil digital - Tarea 2

import UIKit

enum Velocidades : Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadinicial : Velocidades ){
        self = velocidadinicial
    }
}

class Auto {
    
    var velocidad : Velocidades
    
    init(){
        velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena : String ){
        
        var velocidadActual : Int
        
        var valorVelocidadEnCadena : String
        
        switch velocidad {
        case .Apagado:
            velocidadActual = velocidad.rawValue
            valorVelocidadEnCadena = "Apagado"
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidadActual = velocidad.rawValue
            valorVelocidadEnCadena = "VelocidadBaja"
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidadActual = velocidad.rawValue
            valorVelocidadEnCadena = "VelocidadMedia"
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidadActual = velocidad.rawValue
            valorVelocidadEnCadena = "VelocidadAlta"
            velocidad = .VelocidadMedia
        }
        
        return (velocidadActual, valorVelocidadEnCadena)
        
    }
    
    
}

var auto = Auto()

for i in 1...20{
   print(auto.cambioDeVelocidad())
}
