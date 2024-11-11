//
//  DatosDragones.swift
//  ProyectoFinalIOS
//
//  Created by alumno on 11/11/24.
//

import Foundation

public struct Dragon
{
    var nombre: String
    var tipo: String
    var origen: String
    var imagen: String

    init(_ nombre: String, como_se_ve: String, de_deonde_viene: String, retrato: String)
    {
        self.nombre = nombre
        tipo = como_se_ve
        origen = de_deonde_viene
        imagen = retrato
    }

}

public let Dragones = [
    Dragon("Dragon1", como_se_ve: "rojo", de_deonde_viene: "Fantasia", retrato: "Red-dragon"),
    Dragon("Dragon2", como_se_ve: "azul", de_deonde_viene: "Rusia", retrato: "Blue-dragon"),
    Dragon("Dragon3", como_se_ve: "verde", de_deonde_viene: "Brazil", retrato: "Green-dragon"),
    Dragon("Dragon4", como_se_ve: "negro", de_deonde_viene: "Mito", retrato: "Black-dragon"),
    Dragon("Dragon5", como_se_ve: "blanco", de_deonde_viene: "Leyenda", retrato: "White-dragon")
]

