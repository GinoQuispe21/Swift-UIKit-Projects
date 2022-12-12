//
//  ListaConfigurator.swift
//  Viper
//
//  Created by Gino Salvador Quispe Calixto on 11/12/22.
//

import UIKit

class ListaConfigurate {
    static func makeLista () -> UIViewController {
        
//        let interactor = ListaInteractor()
//        si cambiamos esta capa de api
        let api = PetsSocialAPI()
        
        
        let router = ListaRouter()
        let presenter = ListaPresenter()
        let interactor = ListaInteractor(presenter: presenter, api: api)
        presenter.router = router
        presenter.interactor = interactor
        router.presenter = presenter
        interactor.presenter = presenter
        interactor.api = api
//        Esto funciona pero no es el mejor diseño
//        interactor.api = CustomApi()
        
//        let listaViewController = ListaViewController()
//        Para inicializar el view con el tableview statico
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let listaViewController = storyboard.instantiateViewController(withIdentifier: "listaViewController") as? ListaViewController else {
            return UIViewController()
        }
//        let nav = UINavigationController(rootViewController: listaViewController)
        router.view = listaViewController
        presenter.view = listaViewController
        listaViewController.presenter = presenter
        
        return listaViewController
    }
}
