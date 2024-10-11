//
//  mod_navegador_principal.swift
//  ViewCel_y_JsonPlaceHolder
//
//  Created by alumno on 10/11/24.
//

import Foundation
import UIKit
class mod_navegador_principal: UINavigationController
{
    override func viewDidLoad() {
        // self.navigationBar.isTranslucent = true
        // self.navigationBar.backgroundColor = .black
        //self.hidesBarsOnSwipe = true
        activar_navigation_bar(actviar: false)
    }
    
    func activar_navigation_bar(actviar: Bool){
        self.navigationBar.isHidden = !actviar
    }

}
