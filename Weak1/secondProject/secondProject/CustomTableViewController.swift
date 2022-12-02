//
//  CustomTableViewController.swift
//  secondProject
//
//  Created by Gino Salvador Quispe Calixto on 29/11/22.
//

import UIKit

class CustomTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        3. Asignar instancias de data source y delegate por código o storyboards
        tableView.dataSource = self
        tableView.delegate = self
        
//      para inicializarlos la clase necesita adoptar los protocolos
        
        // Do any additional setup after loading the view.
    }
    
//    1. crear textfield
    @IBAction func textField(_ sender: UITextField) {
    }
    
//    1. Crear Table View
    @IBOutlet weak var tableView: UITableView!
    
}

// 2. Adoptar los protocolos DataSource(required) y Delegate
extension CustomTableViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("PRUEBA")
    }
    
}

extension CustomTableViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("u press return!!!!!!")
        return true
    }
}
