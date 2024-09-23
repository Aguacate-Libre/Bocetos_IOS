//
//  ViewController.swift
//  Bocetos_1
//
//  Created by alumno on 9/18/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBSegueAction func al_abrir_pantalla_citas(_ coder: NSCoder) -> OtroControlador? {
        return OtroControlador(muro_texto: "Te gusta el jazz?~", de_quien: "Barry B. Benson", coder: coder)
    }
}

