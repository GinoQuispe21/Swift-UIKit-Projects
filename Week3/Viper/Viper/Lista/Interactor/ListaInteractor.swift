//
//  ListaInterface.swift
//  Viper
//
//  Created by Gino Salvador Quispe Calixto on 10/12/22.
//

import Foundation

protocol ListaInteractorProtocol {
    func dataFromRequest()
}

class ListaInteractor {
    var presenter: ListaPresenterProtocol?
}

extension ListaInteractor : ListaInteractorProtocol {
    func dataFromRequest() {
        presenter?.arrayOrder()
    }
}
