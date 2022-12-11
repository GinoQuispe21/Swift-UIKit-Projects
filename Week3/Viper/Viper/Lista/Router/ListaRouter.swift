//
//  ListaRouter.swift
//  Viper
//
//  Created by Gino Salvador Quispe Calixto on 10/12/22.
//

import Foundation

protocol ListaRouterProtocol {
    func presentAlert()
}

class ListaRouter {
    var presenter: ListaPresenterProtocol?
}

extension ListaRouter : ListaRouterProtocol {

    func presentAlert() {
//        alerta presentada
//        usuario selecciono opcion 3
        presenter?.opcionSeleccionada(3)
    }
}
