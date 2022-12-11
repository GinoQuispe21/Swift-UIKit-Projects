//
//  Lab.swift
//  Viper
//
//  Created by Gino Salvador Quispe Calixto on 10/12/22.
//

import Foundation

func test(){
    
    let presenter = ListaPresenter()
    let formularioPresenter = FormularioPresenter()
    
    
    let viewController = ListaViewController()
    viewController.presenter = formularioPresenter
    
}
