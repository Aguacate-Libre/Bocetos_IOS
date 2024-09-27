//
//  generador_de_citas.swift
//  Bocetos_1
//
//  Created by alumno on 9/18/24.
//

import Foundation

class GeneradorDeCitas
{
    var citas_creadas: Array<Cita>
    
    init()
    {
        citas_creadas = []
    }
    
    func agregar_cita_manual(_ muro_de_texto: String, quien_lo_dijo: String)
    {
        var cita_generada = Cita(quien_lo_dijo: quien_lo_dijo, muro_de_texto: muro_de_texto)
        
        citas_creadas.append(cita_generada)
    }
    
    func agregar_cita(_ cita_nueva: Cita)
    {
        citas_creadas.append(cita_nueva)
    }
    
    func generar_citas_falsas()
    {
        self.agregar_cita_manual("¡Zumbando de alegría, recojo néctar para hacer la mejor miel!", quien_lo_dijo: "Larry A. Beja")
        
        self.agregar_cita_manual("Siempre en equipo, ¡juntas somos más fuertes en la colmena!", quien_lo_dijo: "Danny Miel")
        
        self.agregar_cita_manual("¿Vieron esa flor? ¡Es un buffet de polen delicioso!", quien_lo_dijo: "Andrea Colmena")
        
        self.agregar_cita_manual("No subestimen el poder de una abeja: ¡polinizamos el mundo!", quien_lo_dijo: "Jorge Polen")
        
        self.agregar_cita_manual("El trabajo nunca se detiene, pero siempre hay tiempo para un buen vuelo.", quien_lo_dijo: "Helen Flor")
    }
    
    func obtener_citas_aleatorias() -> Cita
    {
        var cita_para_regresar: Cita
        cita_para_regresar = citas_creadas[Int.random(in: 1...citas_creadas.count)]
        
        return cita_para_regresar
    }
}

