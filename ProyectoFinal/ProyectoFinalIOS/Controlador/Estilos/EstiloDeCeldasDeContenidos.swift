//
//  EstiloDeCeldasDeContenidos.swift
//  ProyectoFinalIOS
//
//  Created by alumno on 11/13/24.
//

import Foundation
import UIKit

extension ControladorVistaContenidos: UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout indexPath: IndexPath) -> CGSize
    {
        var alto = self.collectionView.frame.height
        var ancho = self.collectionView.frame.width
        
        alto = ancho / 1.0
        ancho = ancho * 0.5
        
        return CGSize(width: ancho, height: alto)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collactionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        var margen = CGFloat(10)
        
        return UIEdgeInsets(top: margen, left: margen, bottom: margen, right: margen)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        var alto = self.collectionView.frame.width
        let ancho = self.collectionView.frame.width
        alto = ancho * 0.1
        
        return alto
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
    {
        var ancho = self.collectionView.frame.width
        ancho = ancho.truncatingRemainder(dividingBy: 1.0)
        
        return ancho
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let collectionViewWidth = self.collectionView.frame.width
        let collectionViewHeight = self.collectionView.frame.height
        
        let cellWidth = (collectionViewWidth) / 1.0
        let cellHeight = cellWidth * 0.5
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
}