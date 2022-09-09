//
//  ViewController.swift
//  Semana3-2022-2
//
//  Created by MAC43 on 9/09/22.
//

import UIKit

class ViewController: UIViewController {

//    Instanciamos auto
    let auto: Auto = Auto()
    
    @IBOutlet weak var lblMarca: UILabel!
    @IBOutlet weak var lblModelo: UILabel!
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var lblVelocidad: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Se recuerda que esta funcion al iniciar el aplicativo
        setUpLabel(auto: auto)
        
    }
/// Las acciones y func siempre van despues del viewDidLoad

    @IBAction func onTabNewCar(_ sender: UIButton) {
        auto.brand = "Nissan"
        auto.model = "Frontier"
        auto.color = "Red"
        auto.speed = 50.3
        setUpLabel(auto: auto)
    }
    
    @IBAction func onTabAcelerate(_ sender: UIButton) {
        let newSpeed = Float.random(in: 1...100)
        auto.move(moreSpeed: newSpeed)
        
        
        setUpLabel(auto: auto)
    }
    
    
    @IBAction func onTabStop(_ sender: UIButton) {
        auto.stop()
        setUpLabel(auto: auto)
    }
    
    @IBAction func onTabSlowDown(_ sender: UIButton) {
        let newSpeed = Float.random(in: 1...100)
        auto.slowDown(lessSpeed: newSpeed)
        setUpLabel(auto: auto)
    }
    
    func setUpLabel (auto: Auto) {
        lblMarca.text = auto.brand
        lblModelo.text = auto.model
        lblColor.text = auto.color
        lblVelocidad.text = String(auto.speed)
    }
    
    
}

