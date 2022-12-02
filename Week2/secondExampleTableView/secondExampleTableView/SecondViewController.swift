//
//  SecondViewController.swift
//  secondExampleTableView
//
//  Created by Gino Salvador Quispe Calixto on 30/11/22.
//

import UIKit

protocol SecondViewControllerDelegate {
    func addPerson(person: Person)
}

class SecondViewController: UIViewController {

    var delegate: SecondViewControllerDelegate?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func savePersonTapped(_ sender: Any) {
        let name = nameTextField.text ?? ""
//      if name.isempty == false -> validate empty input
        let person = Person(name: name)
        delegate?.addPerson(person: person)
        dismiss(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
