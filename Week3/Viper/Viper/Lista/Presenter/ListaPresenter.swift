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
    func presentFavPets(_ arrayPetEntity: [PetEntity])
}

class ListaPresenter : ListaPresenterProtocol{
    func presentFavPets(_ arrayPetEntity: [PetEntity]) {
        print("pet response is comming from interactor to presenter")
        print("PetResponse is sended to router")
//        router?.mostrarFavPetsRouter(petEntity: petEntity)
//        var arrayPet: [PetEntity] = []
//        arrayPet.append(petEntity)
        view?.mostrar(arrayPets: arrayPetEntity)
        print("Pets in presenter : \(arrayPetEntity)")
    }
    
//    deberia tener la palabra weak -> relacionado a liberar memoria
    var view : ListaViewControllerProtocol?
    var router: ListaRouterProtocol?
    var interactor: ListaInteractorProtocol?
    
    func getData() {
//        se hizo muchas cosas
//        quiero ahora avisar al view que ya tenemos respuesta
        print("Se llamo al getData dentro del presenter")
        view?.mostrar(4)
    }
    
    func presentErrorView() {
        print("Se llamo al presenteError dentro del presenter")
        router?.presentAlert()
    }
    
    func opcionSeleccionada(_ index: Int) {
        print("Se llamo a la opccion seleccionada dentro del presenter")
        interactor?.favoritos()
    }
}

//class FormularioPresenter : ListaPresenterProtocol{
//    func getData() {}
//    func presentErrorView() {}
//}
