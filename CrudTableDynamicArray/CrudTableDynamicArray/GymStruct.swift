//
//  GymStruct.swift
//  CrudTableDynamicArray
//
//  Created by Gino Salvador Quispe Calixto on 30/11/22.
//

import Foundation

struct Gym {
    
    var name: String
    var description : String
    var district: String
    var reputaion: String
    
    init(name: String, description: String, district: String, reputaion: String) {
        self.name = name
        self.description = description
        self.district = district
        self.reputaion = reputaion
    }
    
}
