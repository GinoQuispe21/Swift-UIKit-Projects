//
//  ARC.swift
//  ARCExample
//
//  Created by Gino Salvador Quispe Calixto on 7/12/22.
//

import Foundation

class Titular {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Instancia Titular borrada de memoria")
    }
}
