//
//  ViewController.swift
//  constrains-and-api
//
//  Created by Gino Salvador Quispe Calixto on 1/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var petsTableView: UITableView!
    
    var petArray = ["Peluchin", "Neron", "Moly", "Gaston"]
    var backup : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
//      Initialize cell for table view in code
        petsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        petsTableView.dataSource = self
        backup = petArray
        nameTextField.addTarget(self, action: #selector(nameTextField(_:)), for: .editingChanged)
        
    }
    
    @objc func nameTextField(_ textField: UITextField) {
        var petsArrayFiltered : [String] = []
        
        if textField == nameTextField {
            let text = textField.text ?? ""
            // print("---> text : \(text)")
            
            petArray.forEach({ value in
                if value.lowercased().contains(text.lowercased()){
                    petsArrayFiltered.append(value)
                }
            })
            petArray = (text.count > 0) ? petsArrayFiltered : backup
            petsTableView.reloadData()
        }
    }
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = petArray[indexPath.row]
        return cell
    }
    
    
}

