//
//  ViewController.swift
//  Viper
//
//  Created by Gino Salvador Quispe Calixto on 10/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func openTableViewControllerButton(_ sender: Any) {
        let tableViewController = ListaConfigurate.makeLista()
//
//        storyboard?.instantiateViewController(withIdentifier: "tableViewController")
//        no tiene un navigation controller, por ello no funciona
//        navigationController?.pushViewController(tableViewController, animated: true)
        
//        show(tableViewController, sender: nil)
        present(tableViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
