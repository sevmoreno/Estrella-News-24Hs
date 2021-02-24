//
//  Noticia.swift
//  Estrella News 24Hs
//
//  Created by Juan Moreno on 12/3/20.
//

import Foundation

struct Noticia: Hashable {
    
    var identificador: Int
    var titulo: String
    var descripcion: String
    var imagenURL: String
    var videoURL: String?
    
    init(titulo: String,descripcion: String, imagenURL: String, videoURL: String) {
        
        identificador = 0
        self.titulo = titulo
        self.descripcion = descripcion
        self.imagenURL  = imagenURL
        self.videoURL = videoURL
        
    }
    
}
