//
//  ControlGeneradorCita.swift
//  Bocetos_1
//
//  Created by alumno on 9/27/24.
//

import Foundation
import UIKit

class ControlPantallaAgregarCita: UIViewController
{
    var quien_lo_dice: String = ""
    var que_dice: String = ""
    
    @IBOutlet weak var quien_lo_dijo_view: UITextField!
    @IBOutlet weak var que_dijo_view: UITextField!
    @IBAction func agregar_cita_nueva(_ sender: Any)
    {
        if (quien_lo_dijo_view.text != nil && que_dijo_view.text != nil)
        {
            cita_creada = Cita(quien_lo_dijo: quien_lo_dijo_view.text!,
                               muro_de_texto: que_dijo_view.text!)
        }
        
        else
        {
            print("ERROR: No existe contedido para agregar")
        }
        
    }
    
    var cita_creada: Cita? = nil
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
