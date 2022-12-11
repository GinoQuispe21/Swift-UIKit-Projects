//
//  ListaViewController.swift
//  Viper
//
//  Created by Gino Salvador Quispe Calixto on 10/12/22.
//

import UIKit

protocol ListaViewControllerProtocol {
    func mostrar(_ numero: Int)
}

class ListaViewController: UIViewController {
    
    var presenter: ListaPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.getData()
        presenter?.presentErrorView()
    }
}

extension ListaViewController: ListaViewControllerProtocol {
    func mostrar(_ numero: Int) {
//        mostrar el número recibido
    }
}
