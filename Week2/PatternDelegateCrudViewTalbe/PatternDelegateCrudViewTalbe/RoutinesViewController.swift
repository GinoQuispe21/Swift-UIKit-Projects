//
//  RoutinesViewController.swift
//  PatternDelegateCrudViewTalbe
//
//  Created by Gino Salvador Quispe Calixto on 1/12/22.
//

import UIKit

class RoutinesViewController: UIViewController {

    var routines = [
        Routine(name: "Back Day", muscle: "Back", excerciseCount: "5", timeRoutine: "1")
    ]
    
    var backup : [Routine] = []
    
    @IBOutlet weak var nameRoutineTextField: UITextField!
    
    @IBOutlet weak var routinesTableView: UITableView!
    
    @IBAction func openModalAddRoutineBarButtonItem(_ sender: UIBarButtonItem) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        backup = routines
        routinesTableView.dataSource = self
        nameRoutineTextField.addTarget(self, action: #selector(nameRoutineTextField(_:)), for: .editingChanged)
    }

}
