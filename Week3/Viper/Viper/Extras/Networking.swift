//
//  Networking.swift
//  Viper
//
//  Created by Gino Salvador Quispe Calixto on 11/12/22.
//

import Foundation

protocol RemoteRepository {
    func fetchPets() -> [PetResponse]
    func fetchTrendingPets() -> [PetResponse]
}

class PetsSocialAPI : RemoteRepository{
    func fetchPets() -> [PetResponse] {
        []
    }
    
    func fetchTrendingPets() -> [PetResponse] {
        []
    }
    
}

class PetMockData : RemoteRepository {
    func fetchPets() -> [PetResponse] {
        return []
    }
    
    func fetchTrendingPets() -> [PetResponse] {
        let resource = "pets_success_01"
        if let url = Bundle.main.url(forResource: resource, withExtension: "json") {
            
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                let result = try decoder.decode([PetResponse].self, from: data)
                return result
                
            } catch let error {
                print(error.localizedDescription)
            }
        }
        return []
    }
    
    
}
