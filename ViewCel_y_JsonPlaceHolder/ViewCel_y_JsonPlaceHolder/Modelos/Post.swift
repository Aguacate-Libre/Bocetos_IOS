//
//  Comentarios.swift
//  ViewCel_y_JsonPlaceHolder
//
//  Created by alumno on 10/9/24.
//
struct Publicacion: Codable
{
    // Decodable: Permite convertir informacion json a un modelo de swift.
    //Encodable: Pewrmite convertir un modelo de swift a JSON.
    //Codable: Ambas al mismo tiempo.
    
    var id: Int
    var userId: Int
    var title: String
    var body: String
}
