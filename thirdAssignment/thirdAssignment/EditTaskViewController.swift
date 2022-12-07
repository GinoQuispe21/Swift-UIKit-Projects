//
//  EditTaskViewController.swift
//  thirdAssignment
//
//  Created by Gino Salvador Quispe Calixto on 5/12/22.
//

import UIKit

protocol EditTaskViewControllerDelegate {
    func editTaskViewController(_ viewController: UIViewController, didUpdated newTask: Task, indexCell index: Int)
}

class EditTaskViewController: UIViewController {

    var task : Task?
    var index : Int = 0
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descTextView: UITextView!
    @IBOutlet weak var priorityTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    
    @IBAction func closeEditBarButtonItem(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    @IBAction func saveTaskBarButtonItem(_ sender: UIBarButtonItem) {
        
        let name = nameTextField.text
        let desc = descTextView.text
        let prio = priorityTextField.text
        let date = dateTextField.text
        
        guard let na = name, !na.isEmpty else {return}
        guard let de = desc, !de.isEmpty else {return}
        guard let pr = prio, !pr.isEmpty else {return}
        guard let da = date, !da.isEmpty else {return}
        
        let newTaskUpdate = Task(name: na, desc: de, priority: pr, date: da)
        delegate?.editTaskViewController(self, didUpdated: newTaskUpdate, indexCell: index)
        dismiss(animated: true)
    }
    
    var delegate : EditTaskViewControllerDelegate?
    
    override func viewDidLoad() {
        nameTextField.text = task?.name
        descTextView.text = task?.desc
        priorityTextField.text = task?.priority
        dateTextField.text = task?.date
        print("El index Cell  para eliminar es: \(index)")
        super.viewDidLoad()
    }
}
