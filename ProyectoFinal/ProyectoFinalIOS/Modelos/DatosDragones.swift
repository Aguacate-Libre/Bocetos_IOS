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
    var nombre: String
    var tipo: String
    var origen: String
    var imagen: UIImage
    var dato: String

    init(_ nombre: String, como_se_ve: String, de_deonde_viene: String, retrato: UIImage, historia_y_datos: String)
    {
        self.nombre = nombre
        tipo = como_se_ve
        origen = de_deonde_viene
        imagen = retrato
        dato = historia_y_datos
    }

}

public let Dragones = [
    Dragon("Uthvara", como_se_ve: "Dragón", de_deonde_viene: "Fantasia", retrato: UIImage.redDragon, historia_y_datos: "Es rojo"),
    Dragon("Fangblade", como_se_ve: "Sierpe", de_deonde_viene: "Fantasia", retrato: UIImage.greenWyrm, historia_y_datos: "Es verde"),
    Dragon("Ganax", como_se_ve: "Dragón", de_deonde_viene: "Fantasia", retrato: UIImage.blueDragon, historia_y_datos: "Es azul"),
    Dragon("Rampaseous", como_se_ve: "Dragón", de_deonde_viene: "Fantasia", retrato: UIImage.greenDragon, historia_y_datos: "Es verde"),
    Dragon("Burner", como_se_ve: "Anfiteatro", de_deonde_viene: "Fantasia", retrato: UIImage.tinAmphithere, historia_y_datos: "Es estaño"),
    Dragon("Steelkite", como_se_ve: "Guiverno", de_deonde_viene: "Fantasia", retrato: UIImage.brassWyvern, historia_y_datos: "Es bronce"),
    Dragon("Tyrant", como_se_ve: "Dragón", de_deonde_viene: "Fantasia", retrato: UIImage.blackDragon, historia_y_datos: "Es negro"),
    Dragon("Thunderbeak", como_se_ve: "Draco", de_deonde_viene: "Fantasia", retrato: UIImage.blueDrake, historia_y_datos: "Es azul"),
    Dragon("Mist", como_se_ve: "Dragón", de_deonde_viene: "Fantasia", retrato: UIImage.whiteDragon, historia_y_datos: "Es blanco")
]

