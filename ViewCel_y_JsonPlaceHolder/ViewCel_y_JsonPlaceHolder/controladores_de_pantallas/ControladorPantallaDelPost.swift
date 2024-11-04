//
//  File.swift
//  ViewCel_y_JsonPlaceHolder
//
//  Created by alumno on 10/11/24.
//

import UIKit

class ControladorPantallaDelPost: UIViewController, UICollectionViewDataSource {
    
    private let identificador_de_Zelda = "CeldaComentario"
    
    let proveedor_publicaciones = ProveedorDePublicaciones.autoreferencia
    
    @IBOutlet weak var titulo_de_publicacion: UILabel!
    @IBOutlet weak var nombre_de_usuario: UILabel!
    @IBOutlet weak var cuerpo_de_publicacion: UILabel!
    private let seccion_comentarios: UICollectionView =
    {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: 500, height: 200)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    public var id_publicacion: Int?
    private var publicacion: Publicacion?
    private var user: Usuario?
    
    private var lista_comentarios: [Comentario] = []
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        
        let controlador_de_navegacion = self.navigationController as? mod_navegador_principal
        controlador_de_navegacion?.activar_navigation_bar(actviar: true)
        
        seccion_comentarios.dataSource = self
        seccion_comentarios.backgroundColor = .black
        
        realizar_descarga_de_informacion()
    }
    
    func realizar_descarga_de_informacion()
    {
        if self.publicacion == nil
        {
            proveedor_publicaciones.obtener_publicacion(id: self.id_publicacion ?? -1,
                que_hacer_al_recibir:
                {
                    [weak self] (publicacion) in self?.publicacion = publicacion
                    DispatchQueue.main.async
                    {
                        self?.dibujar_publicacion()
                        self?.realizar_descarga_de_informacion()
                    }
            })
        }
        
        else if self.publicacion != nil
        {
            proveedor_publicaciones.obtener_usuario(id: publicacion!.userId,
                que_hacer_al_recibir:
                {
                    [weak self] (user) in self?.user = user
                    DispatchQueue.main.async
                    {
                        self?.dibujar_usuario()
                        
                    }
            })
            
            proveedor_publicaciones.obtener_comentario(id: publicacion!.id,
                que_hacer_al_recibir:
                {
                    [weak self] (comentarios_descargados) in self?.lista_comentarios = comentarios_descargados
                    DispatchQueue.main.async
                    {
                        self?.seccion_comentarios.reloadData()
                    }
            })
        }
    }
    
    func dibujar_publicacion()
    {
        guard let publicacion_actual = self.publicacion else
        {
            return
        }
        
        titulo_de_publicacion.text = publicacion_actual.title
        cuerpo_de_publicacion.text = publicacion_actual.body
    }
    
    func dibujar_usuario()
    {
        guard let usuario_actual = self.user else
        {
            return
        }
        
        nombre_de_usuario.text = usuario_actual.username
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lista_comentarios.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("Aqui deberia hacer algo")
        
        let zelda = collectionView.dequeueReusableCell(withReuseIdentifier:identificador_de_Zelda, for: indexPath)
        zelda.backgroundColor = .darkGray
        return zelda
    }
    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
    
}
