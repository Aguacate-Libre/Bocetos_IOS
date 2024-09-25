//
//  ViewController.swift
//  Bocetos_1
//
//  Created by alumno on 9/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    var cita_para_enviar: Cita = Cita(quien_lo_dijo: "Barry B. Benson", muro_de_texto: "Te gusta el jazz?~")
    var citas_disponibles: GeneradorDeCitas = GeneradorDeCitas()

    override func viewDidLoad() {
        citas_disponibles.generar_citas_falsas()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let valor = Int.random(in: 0...100)
        Double.random(in: 0...100)
        
    }

    @IBSegueAction func poner_la_cosa_cobre_la_cosa(_ coder: NSCoder) -> OtroControlador? {
        return OtroControlador(cita_para_cita: citas_disponibles.obtener_citas_aleatorias(), coder: coder)
    }
    @IBSegueAction func guardar_la_cosa_con_las_demas(_ coder: NSCoder) -> OtroControladorMas? {
        return <#OtroControladorMas(coder: coder)#>
    }
}

