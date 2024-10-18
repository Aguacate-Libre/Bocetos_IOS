//
//  File.swift
//  ViewCel_y_JsonPlaceHolder
//
//  Created by alumno on 10/11/24.
//

import Foundation
import UIKit

class ControladorPantallaDelPost: UIViewController {
    public var id_publicacion: Int?
    private var publicacion: Comentario?
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        
        let controlador_de_navegacion = self.navigationController as? mod_navegador_principal
        controlador_de_navegacion?.activar_navigation_bar(actviar: true)
        
        realizar_descarga_de_informacion()
    }
    
    func realizar_descarga_de_informacion()
    {
        ProveedorDePublicaciones.autoreferencia.obtener_publicacion(id: self.id_publicacion ?? -1,
            que_hacer_al_recibir:
            {
                [weak self] (publicacion) in self?.publicacion = publicacion
                DispatchQueue.main.async
                {
                    self?.dibujar_publicacion()
                }
        })
    }
    
    func dibujar_publicacion()
    {
        print(publicacion?.body)
    }
}
