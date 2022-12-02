//
//  ExtensionRoutineViewController.swift
//  PatternDelegateCrudViewTalbe
//
//  Created by Gino Salvador Quispe Calixto on 2/12/22.
//

import Foundation
import UIKit

extension RoutinesViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        routines.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "aiuda", for: indexPath) as? RoutineTableViewCell else { return UITableViewCell()}
        let name = routines[indexPath.row].name
        let musc = routines[indexPath.row].muscle
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = name
//        cell.detailTextLabel?.text = musc
        cell.setupLabels(name: name, muscle: musc)
        return cell
    }
}

extension RoutinesViewController : AddRoutineTableViewControllerDelegate {
    func addRoutineTableViewController(_ viewController: AddRoutineTableViewController, didCreateRoutine newRoutine: Routine) {
        routines.append(newRoutine)
        backup = routines
        print(newRoutine)
        routinesTableView.reloadData()
    }
}

extension RoutinesViewController {
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nav = segue.destination as? UINavigationController
        let destination = nav?.viewControllers.first as? AddRoutineTableViewController
        destination?.delegate = self
        
    }
}

extension RoutinesViewController {
    @objc func nameRoutineTextField(_ textField: UITextField) {
        var routinesFiltered : [Routine] = []
        
        if textField == nameRoutineTextField {
            let text = nameRoutineTextField.text ?? ""
            routines.forEach({ value in
                if value.name.lowercased().contains(text.lowercased()) || value.muscle.lowercased().contains(text.lowercased()){
                    routinesFiltered.append(value)
                }
            })
            routines = (text.count > 0) ? routinesFiltered : backup
            routinesTableView.reloadData()
        }
        
    }
}
