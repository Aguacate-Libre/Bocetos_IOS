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
    public var dragon: Dragon?
    
    required init?(coder: NSCoder)
    {
        self.dragon = Dragon(identificacion: 0, como_se_llama: "Desarrollador", como_se_ve: "Vista", de_deonde_viene: "Lugar", retrato: UIImage.dragonsLogo4X100, historia_y_datos: "Origen")
        super.init(coder: coder)
        print("ERROR: no se cargo el init correcto.")
    }
    
    init(datos_de_dragon: Dragon, coder: NSCoder)
    {
        self.dragon = datos_de_dragon
        super.init(coder: coder)!
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        mostrar_datos()
    }
    
    func mostrar_datos()
    {
        Nombre_seleccionado.text = dragon?.nombre
        datos_seleccionado.text = dragon?.dato
    }
}
