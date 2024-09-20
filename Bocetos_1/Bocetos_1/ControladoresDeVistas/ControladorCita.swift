//
//  ViewController.swift
//  Bocetos_1
//
//  Created by alumno on 9/18/24.
//

import UIKit

class ControladorVistaCita: UIViewController {
    @IBOutlet weak var nombre_de_quien_lo_dijo: UILabel!
    @IBOutlet weak var que_dijo_que: UILabel!
    
    var texto: String
    
    required init?(coder: NSCoder)
    {
        super.init(coder: coder)
        print("Algo paso por aqui")
    }
    
    init(titulo_secundario: String, coder: String)
    {
        texto = titulo_secundario
        
        super.init(coder: coder)!
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Me estoy ejecutando")
        
        nombre_de_quien_lo_dijo.text = texto
        
    }
    
    @IBSegueAction func moviendo_pantalla(_ coder: NSCoder) -> ControladorVistaCita? {
        return ControladorVistaCita()
    }
    

}

