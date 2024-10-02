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
    
    @IBOutlet weak var labelcito: UILabel!
    
    override func viewDidLoad() {
        citas_disponibles.generar_citas_falsas()
        super.viewDidLoad()
        
        actualizar_cantidad()
        // Do any additional setup after loading the view.
        
        let valor = Int.random(in: 0...100)
        Double.random(in: 0...100)
        
    }
    
    func actualizar_cantidad()
    {
        labelcito.text = String(citas_disponibles.citas_creadas.count)
    }
    
    @IBSegueAction func poner_la_cosa_cobre_la_cosa(_ coder: NSCoder) -> OtroControlador? {
        return OtroControlador(cita_para_cita: citas_disponibles.obtener_citas_aleatorias(), coder: coder)
    }
    
    @IBAction func volver_a_la_pantalla_inicio(segue: UIStoryboardSegue)
    {
        if let pantalla_agregar_citas = segue.source as?
                ControlPantallaAgregarCita
        {
            if (pantalla_agregar_citas.cita_creada != nil)
            {
                citas_disponibles.agregar_cita(pantalla_agregar_citas.cita_creada!)
            }
            
            else
            {
                print("ERROR: Campo Vacio")
            }
        }
        
        actualizar_cantidad()
    }
}

