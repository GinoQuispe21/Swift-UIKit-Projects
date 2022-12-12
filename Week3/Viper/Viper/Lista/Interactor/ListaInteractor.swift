//
//  ListaInterface.swift
//  Viper
//
//  Created by Gino Salvador Quispe Calixto on 10/12/22.
//

import Foundation

protocol ListaInteractorProtocol {
    func favoritos()
}

class ListaInteractor {
    
//    private let api: CustomApi = CustomApi()
    var presenter: ListaPresenterProtocol?
    var api: RemoteRepository?
    
    required init(presenter: ListaPresenterProtocol, api: RemoteRepository) {
        self.presenter = presenter
        self.api = api
    }
}

extension ListaInteractor : ListaInteractorProtocol {
    func favoritos() {
        print("Favoritos del interactor")
        print("PetResponse is sended to Presenter")
        if let favPets = api?.fetchTrendingPets(){
            
            let petModel = PetEntity.make(favPets)
            
            presenter?.presentFavPets(petModel)
            print("Pets in interactor : \(petModel)")
        }
    }
}
