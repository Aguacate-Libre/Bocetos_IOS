//
//  ControladorVistaGaleria.swift
//  ProyectoFinalIOS
//
//  Created by alumno on 11/8/24.
//

import Foundation
import UIKit

class ControladorVistaGaleria : UICollectionViewController
{
    private var lista_de_dragones: [Dragon] = Dragones
    private let identificador_de_celda = "celda_pantalla_galeria"
    private var dragon: Dragon?
    public var id_dragon: Int?
    
    func numeroDeSecciones(in collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        print("\(lista_de_dragones.count)x----x---x")
        return lista_de_dragones.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let celda: VistaCeldaGaleria = collectionView.dequeueReusableCell(withReuseIdentifier: identificador_de_celda, for: indexPath) as! VistaCeldaGaleria
        
        celda.backgroundColor = UIColor.black
        celda.Imagen.image = self.lista_de_dragones[indexPath.item].imagen
        
        return celda
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        id_dragon = indexPath.item
        let detalles_de_dragon = storyboard?.instantiateViewController(withIdentifier: "detalles_de_dragon") as! ControladorVistaDatos
        
        detalles_de_dragon.dragon = lista_de_dragones[indexPath.item]
        navigationController?.popToViewController(detalles_de_dragon, animated: true)
    }
    
    func identificar_dragon() -> Dragon
    {
        var datos_del_dragon: Dragon
        datos_del_dragon = lista_de_dragones[id_dragon!]
        
        return datos_del_dragon
    }
    
    @IBAction func volver_a_la_galeria(segue: UIStoryboardSegue)
    {
        let pantalla_de_datos = segue.source as? ControladorVistaDatos
    }
}
