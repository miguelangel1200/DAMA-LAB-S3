//
//  Auto.swift
//  Semana3-2022-2
//
//  Created by MAC43 on 9/09/22.
//

import Foundation

class Auto {
    
//    Si no tenemos un constructor podemos inicializar las variables
    var brand: String = "Toyota"
    var model: String = "Pickup"
    var color: String = "Negro"
    var speed: Float = 60.5
    
    func move(moreSpeed: Float) {
        speed += moreSpeed
        
        if speed > 160 {
            stop()
        }
    }
    
    func stop() {
        print("Auto stopeed")
        speed = 0.0
    }
    
    func slowDown(lessSpeed: Float){
        speed -= lessSpeed
        
        if speed < 0 || speed == lessSpeed {
            move(moreSpeed: lessSpeed)
        }
    }
    
}
