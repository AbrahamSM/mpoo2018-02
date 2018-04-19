//
//  ViewController.swift
//  Actividad 1 ver1
//
//  Created by macbookUser on 12/04/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numero1: UITextField!
    @IBOutlet weak var numero2: UITextField!
    @IBOutlet weak var resultado: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func suma(_ sender: UIButton) {
        
        var dato1: Int = Int(numero1.text ?? "") ?? 0
        var dato2: Int = Int(numero2.text ?? "") ?? 0
        
        resultado.text = String(dato1 + dato2)
        
    }
    
    @IBAction func resta(_ sender: UIButton) {
        var dato1: Int = Int(numero1.text ?? "") ?? 0
        var dato2: Int = Int(numero2.text ?? "") ?? 0
        
        resultado.text = String(dato2 - dato1)
    }
    
    


}

