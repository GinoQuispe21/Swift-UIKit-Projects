//
//  ViewController.swift
//  dynamicTables
//
//  Created by Gino Salvador Quispe Calixto on 29/11/22.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource,  {
    
    var names = [
        Person(name: "Gino", phone: "975901372"),
        Person(name: "Juan", phone: "275201271"),
        Person(name: "Pedro", phone: "981239992")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }

    @IBOutlet weak var tableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//      se debe poner if let o guard let
        if let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as? CustomTableViewCell {
            let name = names[indexPath.row].name
            let phone = names[indexPath.row].phone
            cell.nameLabel.text = name
            cell.phoneLabel.text = phone
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
}
