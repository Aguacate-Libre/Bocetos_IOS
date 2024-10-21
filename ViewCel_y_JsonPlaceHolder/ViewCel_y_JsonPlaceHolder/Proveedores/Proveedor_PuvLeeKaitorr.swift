//
//  Proveedor_PuvLeeKaitorr.swift
//  ViewCel_y_JsonPlaceHolder
//
//  Created by alumno on 10/18/24.
//

import Foundation
import UIKit

class ProveedorDePublicaciones
{
    let url_de_publicaciones = "https://jsonplaceholder.typicode.com/"
    var  lista_de_publicaciones: [Publicacion] = []
    var  lista_de_usuarios: [Usuario] = []
    
    /*
    static var autoreferencia: ProveedorDePublicaciones = {
        // Esta version es solo para añadir configuracion o cosas importatnes durante la inicializacion
        let instancia = ProveedorDePublicaciones()
        return instancia
    }()
     */
    static var autoreferencia = ProveedorDePublicaciones()
    
    private init() {}
    
    func obtener_publicacion(id: Int, que_hacer_al_recibir: @escaping (Publicacion) -> Void)
    {
    // func obtener_publicaicones() async throws -> [Publicacion] {
        let ubicacion = URL(string: "\(url_de_publicaciones)posts/\(id)")!
        URLSession.shared.dataTask(with: ubicacion) {
                (datos, respuesta, error) in do
                {
                    if let publicaciones_recibidas = datos
                    {
                        let prueba_de_interpretacion_de_datos = try JSONDecoder().decode(Publicacion.self, from: publicaciones_recibidas)
                        
                        que_hacer_al_recibir(prueba_de_interpretacion_de_datos)
                    }
                    else
                    {
                        print(respuesta)
                    }
                }
                catch
                {
                    print("Error")
                }
        }
        .resume()
    }
    
    func realizar_subida_de_publicacion(publicaicon_nueva: Publicacion)
    {
        // func obtener_publicaicones() async throws -> [Publicacion] {
        let ubicacion = URL(string: url_de_publicaciones)!
        URLSession.shared.dataTask(with: ubicacion)
        {
            (datos, respuesta, error) in do {}
        }
        .resume()
    }
    
    func obtener_usuario(id: Int, que_hacer_al_recibir: @escaping (Usuario) -> Void)
    {
    // func obtener_publicaicones() async throws -> [Publicacion] {
        let ubicacion = URL(string: "\(url_de_publicaciones)users/\(id)")!
        URLSession.shared.dataTask(with: ubicacion) {
                (datos, respuesta, error) in do
                {
                    if let publicaciones_recibidas = datos
                    {
                        let prueba_de_interpretacion_de_datos = try JSONDecoder().decode(Usuario.self, from: publicaciones_recibidas)
                        
                        que_hacer_al_recibir(prueba_de_interpretacion_de_datos)
                    }
                    else
                    {
                        print(respuesta)
                    }
                }
                catch
                {
                    print("Error")
                }
        }
        .resume()
    }
    
    func obtener_comentario(id: Int, que_hacer_al_recibir: @escaping (Comentario) -> Void)
    {
    // func obtener_publicaicones() async throws -> [Publicacion] {
        let ubicacion = URL(string: "\(url_de_publicaciones)posts/\(id)/comments")!
        URLSession.shared.dataTask(with: ubicacion) {
                (datos, respuesta, error) in do
                {
                    if let publicaciones_recibidas = datos
                    {
                        let prueba_de_interpretacion_de_datos = try JSONDecoder().decode(Comentario.self, from: publicaciones_recibidas)
                        
                        que_hacer_al_recibir(prueba_de_interpretacion_de_datos)
                    }
                    else
                    {
                        print(respuesta)
                    }
                }
                catch
                {
                    print("Error")
                }
        }
        .resume()
    }
}
