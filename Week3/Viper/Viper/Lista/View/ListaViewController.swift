//
//  ListaViewController.swift
//  Viper
//
//  Created by Gino Salvador Quispe Calixto on 10/12/22.
//

import UIKit

protocol ListaViewControllerProtocol {
    func mostrar(_ numero: Int)
    func mostrar(arrayPets: [PetEntity])
}

class ListaViewController: UITableViewController {
    
    var arrayPets: [PetEntity] = []
    var presenter: ListaPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        
        print("Se llamo al lista view controller")
        
        presenter?.getData()
        presenter?.presentErrorView()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayPets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrayPets[indexPath.row].name
        return cell
    }
    
}

extension ListaViewController: ListaViewControllerProtocol {
    func mostrar(arrayPets: [PetEntity]) {
        self.arrayPets = arrayPets
    }
    
    func mostrar(_ numero: Int) {
//        mostrar el número recibido
        print("Se llamo a mostrar dentro de lista view controller")
    }
}
