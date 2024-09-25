//
//  Cita.swift
//  Bocetos_1
//
//  Created by alumno on 9/18/24.
//

import Foundation

struct Cita
{
    var nombre: String
    
    var texto: String
    
    init(quien_lo_dijo: String, muro_de_texto: String)
    {
        nombre = quien_lo_dijo
        texto = muro_de_texto
    }
}

