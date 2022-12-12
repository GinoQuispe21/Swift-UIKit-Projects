//
//  PetResponse.swift
//  Viper
//
//  Created by Gino Salvador Quispe Calixto on 11/12/22.
//
import Foundation

struct PetResponse: Decodable {
    let name: String
    let type: String
    let birthday: String?
    let color: String?
    
//    cuando tocas uno debes iniciar todos
    enum CodingKeys: String, CodingKey {
        case name
        case type = "tipo"
        case birthday
        case color
    }
}
