//
//  ControladorVistaDatos.swift
//  ProyectoFinalIOS
//
//  Created by alumno on 11/22/24.
//

import Foundation
import UIKit

class ControladorVistaDatos: UIViewController
{
    @IBOutlet weak var Nombre_seleccionado: UILabel!
    @IBOutlet weak var datos_seleccionado: UILabel!
    private var dragon: Dragon
    
    required init?(coder: NSCoder)
    {
        self.dragon = Dragon(nombre: "Ramon el Dragón", historia_y_datos: "Un dragón que estaba ahí nomas")
        super.init(coder: coder)
        print("ERROR: no se cargo el init correcto.")
    }
    
    override func ver_si_cargo()
    {
        super.ver_si_cargo()
        mostrar_datos()
    }
    
    func mostrar_datos()
    {
        Nombre_seleccionado.text = dragon.nombre
        datos_seleccionado.text = dragon.dato
    }
}
