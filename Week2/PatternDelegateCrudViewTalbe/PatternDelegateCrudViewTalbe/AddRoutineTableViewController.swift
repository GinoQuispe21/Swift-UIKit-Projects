//
//  AddRoutineTableViewController.swift
//  PatternDelegateCrudViewTalbe
//
//  Created by Gino Salvador Quispe Calixto on 2/12/22.
//

import UIKit

protocol AddRoutineTableViewControllerDelegate {
    func addRoutineTableViewController(_ viewController: AddRoutineTableViewController, didCreateRoutine newRoutine: Routine)
}

class AddRoutineTableViewController: UITableViewController {

    @IBOutlet weak var nameRoutineTextField: UITextField!
    @IBOutlet weak var muscleFocusTextField: UITextField!
    @IBOutlet weak var numberExercisesTextField: UITextField!
    @IBOutlet weak var timeRoutineTextField: UITextField!
    
    var delegate : AddRoutineTableViewControllerDelegate?
    
    @IBAction func SaveNewRoutineBarButtonItem(_ sender: UIBarButtonItem) {
        
        let name = nameRoutineTextField.text
        let muscle = muscleFocusTextField.text
        let number = numberExercisesTextField.text
        let time = timeRoutineTextField.text
        
        guard let na = name, !na.isEmpty else {return}
        guard let mu = muscle, !mu.isEmpty else {return}
        guard let nu = number, !nu.isEmpty else {return}
        guard let ti = time, !ti.isEmpty else {return}
        
        let routine = Routine(name: na, muscle: mu, excerciseCount: nu, timeRoutine: ti)
        delegate?.addRoutineTableViewController(self, didCreateRoutine: routine)
        dismiss(animated: true)
    }
    
    @IBAction func CloseModalBarButtonItem(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameRoutineTextField.placeholder = "Nombre de la Rutina"
        muscleFocusTextField.placeholder = "Grupo Muscular"
        numberExercisesTextField.placeholder = "Ejercicios"
        timeRoutineTextField.placeholder = "Tiempo"
    }
    
}
