//
//  OtroControlador.swift
//  Bocetos_1
//
//  Created by alumno on 9/23/24.
//

import UIKit
import Foundation

class OtroControlador: UIViewController
{
    @IBOutlet weak var nombre_de_quien_lo_dijo: UILabel!
    @IBOutlet weak var que_dijo_muro_texto: UILabel!
    
    var cita_actual: Cita

    required init?(coder: NSCoder)
    {
        self.cita_actual = Cita(quien_lo_dijo: "Desarrollador", muro_de_texto: "Tenemos un problema por una rebanada de pastel")
        
        super.init(coder: coder)
        print("Error: Se ha cargado el default de INIT")
    }

    init(cita_para_cita: Cita, coder: NSCoder)
    {
        print("Estamos aqui ")
        self.cita_actual = cita_para_cita
        super.init(coder: coder)!
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        inicializar_pantalla()
    }
    
    func inicializar_pantalla()
    {
        nombre_de_quien_lo_dijo.text = cita_actual.nombre
        que_dijo_muro_texto.text = cita_actual.texto
    }
}

