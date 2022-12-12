//
//  ListaEntity.swift
//  Viper
//
//  Created by Gino Salvador Quispe Calixto on 10/12/22.
//

// el objeto puede pasar de diferentes formatos
// en VIPER no se toma en cuenta, solo se toma una entidad
// esta es otra falencia

// este entity se jala del interactor y se lleva al presenter

import Foundation

struct PetEntity {
    let name: String
    static func make(_ pets: [PetResponse]) -> [PetEntity] {
        return pets.map ( { PetEntity(name: $0.name) } )
    }
}
