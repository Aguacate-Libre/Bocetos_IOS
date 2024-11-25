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
        let pantalla_de_galeria = storyboard?.instantiateViewController(withIdentifier: "detalles_de_dragon") as! ControladorVistaDatos
        
        pantalla_de_galeria.dragon = lista_de_dragones[indexPath.item]
        navigationController?.popToViewController(pantalla_de_galeria, animated: true)
    }
    
    @IBAction func volver_a_la_galeria(segue: UIStoryboardSegue)
    {
        let pantalla_de_datos = segue.source as? ControladorVistaDatos
    }
}
