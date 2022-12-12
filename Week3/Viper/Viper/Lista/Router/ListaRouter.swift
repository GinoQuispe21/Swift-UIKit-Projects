//
//  ListaRouter.swift
//  Viper
//
//  Created by Gino Salvador Quispe Calixto on 10/12/22.
//

import Foundation
import UIKit

protocol ListaRouterProtocol {
    func presentAlert()
    func mostrarFavPetsRouter(petEntity: PetEntity)
}

class ListaRouter {
    var view: UIViewController?
    var presenter: ListaPresenterProtocol?
}

extension ListaRouter : ListaRouterProtocol {
    func mostrarFavPetsRouter(petEntity: PetEntity) {
        print("pet response is comming from presenter to response")
        print("Pets in router : \(petEntity)")
        let viewController = UIViewController()
        view?.present(viewController, animated: true)
    }
    

    func presentAlert() {
//        alerta presentada
//        usuario selecciono opcion 3
        print("Se llamo a presentAlert dentro de Router")
        presenter?.opcionSeleccionada(3)
    }
}
