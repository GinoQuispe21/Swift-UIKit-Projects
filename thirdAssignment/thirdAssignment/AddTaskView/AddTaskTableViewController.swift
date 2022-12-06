//
//  AddTaskTableViewController.swift
//  thirdAssignment
//
//  Created by Gino Salvador Quispe Calixto on 2/12/22.
//

import UIKit

protocol AddTaskTableViewControllerDelegate {
    func addTaskTableViewController(_ tableViewController: UITableViewController, didCreateTask newTask: Task)
}

class AddTaskTableViewController: UITableViewController {

    @IBAction func CloseBarButtonItem(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    @IBAction func SaveTaskBarButtonItem(_ sender: UIBarButtonItem) {
        
        let name = nameTextField.text
        let desc = descTextField.text
        let prio = priorityTextField.text
        let date = dateTextFIeld.text
        
        guard let na = name, !na.isEmpty else {return}
        guard let de = desc, !de.isEmpty else {return}
        guard let pr = prio, !pr.isEmpty else {return}
        guard let da = date, !da.isEmpty else {return}
        
        let task = Task(name: na, desc: de, priority: pr, date: da)
        delegate?.addTaskTableViewController(self, didCreateTask: task)
        dismiss(animated: true)
    }
    
    var delegate : AddTaskTableViewControllerDelegate?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descTextField: UITextField!
    @IBOutlet weak var priorityTextField: UITextField!
    @IBOutlet weak var dateTextFIeld: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Nombre"
        descTextField.placeholder = "Descripción"
        priorityTextField.placeholder = "Prioridad"
        dateTextFIeld.placeholder = "Fecha"
    }
    
    
    
}
