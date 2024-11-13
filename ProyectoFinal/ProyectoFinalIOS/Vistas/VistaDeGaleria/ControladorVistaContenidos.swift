//
//  ControladorVistaContenidos.swift
//  ProyectoFinalIOS
//
//  Created by alumno on 11/11/24.
//

import Foundation
import UIKit

class ControladorVistaContenidos : UICollectionViewController
{
    private var lista_de_dragones: [Dragon] = []
    private let identificador_de_celda = "celda_pantalla_principal"
    private var dragon: Dragon?
    public var id_dragon: Int?
    
    func numeroDeSecciones(in collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return lista_de_dragones.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let celda: VistaDeCelda = collectionView.dequeueReusableCell(withReuseIdentifier: identificador_de_celda, for: indexPath) as! VistaDeCelda
        
        celda.backgroundColor = UIColor.black
        
        celda.nombre.text = self.lista_de_dragones[indexPath.item].nombre
        celda.de_deonde_viene.text = self.lista_de_dragones[indexPath.item].origen
        celda.como_se_ve.text = self.lista_de_dragones[indexPath.item].tipo
        celda.retrato.image = self.lista_de_dragones[indexPath.item].imagen
        
        return celda
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        let pantalla_de_contenidos = storyboard?.instantiateViewController(withIdentifier: "pantalla_de_contenidos") as! ControladorVistaContenidos
        
        pantalla_de_contenidos.id_dragon
    }
}
