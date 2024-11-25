//
//  DatosDragones.swift
//  ProyectoFinalIOS
//
//  Created by alumno on 11/11/24.
//

import Foundation
import UIKit

public struct Dragon
{
    var id: Int
    var nombre: String
    var tipo: String
    var origen: String
    var imagen: UIImage
    var dato: String

    init(_ id: Int, como_se_llama: String, como_se_ve: String, de_deonde_viene: String, retrato: UIImage, historia_y_datos: String)
    {
        self.id = id
        nombre = como_se_llama
        tipo = como_se_ve
        origen = de_deonde_viene
        imagen = retrato
        dato = historia_y_datos
    }

}

public let Dragones = [
    Dragon(1, como_se_llama: "Uthvara", como_se_ve: "Dragón", de_deonde_viene: "Fantasia", retrato: UIImage.redDragon, historia_y_datos: "Es rojo"),
    Dragon(2, como_se_llama: "Fangblade", como_se_ve: "Sierpe", de_deonde_viene: "Fantasia", retrato: UIImage.greenWyrm, historia_y_datos: "Es verde"),
    Dragon(3, como_se_llama: "Ganax", como_se_ve: "Dragón", de_deonde_viene: "Fantasia", retrato: UIImage.blueDragon, historia_y_datos: "Es azul"),
    Dragon(4, como_se_llama: "Rampaseous", como_se_ve: "Dragón", de_deonde_viene: "Fantasia", retrato: UIImage.greenDragon, historia_y_datos: "Es verde"),
    Dragon(5, como_se_llama: "Burner", como_se_ve: "Anfiteatro", de_deonde_viene: "Fantasia", retrato: UIImage.tinAmphithere, historia_y_datos: "Es estaño"),
    Dragon(6, como_se_llama: "Steelkite", como_se_ve: "Guiverno", de_deonde_viene: "Fantasia", retrato: UIImage.brassWyvern, historia_y_datos: "Es bronce"),
    Dragon(7, como_se_llama: "Tyrant", como_se_ve: "Dragón", de_deonde_viene: "Fantasia", retrato: UIImage.blackDragon, historia_y_datos: "Es negro"),
    Dragon(8, como_se_llama: "Thunderbeak", como_se_ve: "Draco", de_deonde_viene: "Fantasia", retrato: UIImage.blueDrake, historia_y_datos: "Es azul"),
    Dragon(9, como_se_llama: "Mist", como_se_ve: "Dragón", de_deonde_viene: "Fantasia", retrato: UIImage.whiteDragon, historia_y_datos: "Es blanco")
]

