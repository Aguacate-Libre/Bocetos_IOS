//
//  OtroControladorMas.swift
//  Bocetos_1
//
//  Created by alumno on 9/25/24.
//

import Foundation
import UIKit

class AmogusControlPantalla: UIViewController
{
    var texto_de_musica: String = ""
    var tiempo_pasado: TimeInterval = 0
    
    @IBOutlet weak var texto_de_musica_view: UILabel!
    @IBAction func generar_musica(_ sender: Any)
    {
        texto_de_musica_view.text = "Dun dun dun dun dun dun dun, du-du-dun..."
    }
    
    //let seconds = Int ( self ? .tiempo_pasado ?? 0) % 60
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
