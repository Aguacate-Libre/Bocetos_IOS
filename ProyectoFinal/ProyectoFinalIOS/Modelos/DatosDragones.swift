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

    init(_ nombre: String, como_se_ve: String, de_deonde_viene: String, retrato: UIImage)
    {
        self.nombre = nombre
        tipo = como_se_ve
        origen = de_deonde_viene
        imagen = retrato
    }

}

public let Dragones = [
    Dragon("Dragon1", como_se_ve: "rojo", de_deonde_viene: "Fantasia", retrato: UIImage.redDragon),
    Dragon("Dragon2", como_se_ve: "azul", de_deonde_viene: "Rusia", retrato: UIImage.blueDragon),
    Dragon("Dragon3", como_se_ve: "verde", de_deonde_viene: "Brazil", retrato: UIImage.greenDragon),
    Dragon("Dragon4", como_se_ve: "negro", de_deonde_viene: "Mito", retrato: UIImage.blackDragon),
    Dragon("Dragon5", como_se_ve: "blanco", de_deonde_viene: "Leyenda", retrato: UIImage.whiteDragon)
]

