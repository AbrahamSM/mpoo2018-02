//
//  ViewController.swift
//  Actividad 2
//
//  Created by macbookUser on 07/03/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clima: UIImageView!
    @IBOutlet weak var controladorSlider: UISlider!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(controladorSlider.value)
    }

    @IBAction func Controlador(_ sender: UISlider) {
        
        var porcentaje: Float
        
        print(controladorSlider.value)
        label1.text = String(Int(controladorSlider.value * 100)) + "% de frialdad en el ambiente"
        
        porcentaje = controladorSlider.value * 100
        label2.text = String(Int(porcentaje))
        
        switch Int(porcentaje) {
        case 0...25:
            label2.text = "Soleado"
            clima.image = UIImage(named: "soleado") //Para las imaganes
        case 26...50:
            label2.text = "Nublado"
            clima.image = UIImage(named: "nublado") //Para las imaganes
        case 51...75:
            label2.text = "Tormentoso"
            clima.image = UIImage(named: "tormentoso") //Para las imaganes
        default:
            label2.text = "Invernal"
            clima.image = UIImage(named: "invierno") //Para las imaganes
        }
        
        
        
    }
    


}

