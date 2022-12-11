//
//  ListaPresenter.swift
//  Viper
//
//  Created by Gino Salvador Quispe Calixto on 10/12/22.
//

import Foundation
/// Primer error/falencia de VIPER -> mesclando responsabilidades  -> se debe desacoplar
///  Interface Segregation Principle not work here -_- , se debe usar para resolver el problema del protocol de ser muy cargado de funcs

protocol ListaPresenterProtocol {
//    cosas del view ->  presenter
    func getData()
    func presentErrorView()
    
//    cosas del router -> presenter
    func opcionSeleccionada(_ index: Int)
    
//    cosas del interacotr -> presenter
    func arrayOrder()
}

class ListaPresenter : ListaPresenterProtocol{
    func arrayOrder() {
        interactor?.dataFromRequest()
    }
    
//    deberia tener la palabra weak -> relacionado a liberar memoria
    var view : ListaViewControllerProtocol?
    var router: ListaRouterProtocol?
    var interactor: ListaInteractorProtocol?
    
    func getData() {
//        se hizo muchas cosas
//        quiero ahora avisar al view que ya tenemos respuesta
        
        view?.mostrar(4)
    }
    
    func presentErrorView() {
        router?.presentAlert()
    }
    
    func opcionSeleccionada(_ index: Int) {
        interactor?.dataFromRequest()
    }
}

//class FormularioPresenter : ListaPresenterProtocol{
//    func getData() {}
//    func presentErrorView() {}
//}
