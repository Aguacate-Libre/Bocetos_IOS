//
//  File.swift
//  ViewCel_y_JsonPlaceHolder
//
//  Created by alumno on 10/11/24.
//

import Foundation
import UIKit

class ControladorPantallaDelPost: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("hola mundo")
        
        // Do any additional setup after loading the view.
        
        
        let controlador_de_navegacion = self.navigationController as? mod_navegador_principal
        controlador_de_navegacion?.activar_navigation_bar(actviar: true)
    }
}
