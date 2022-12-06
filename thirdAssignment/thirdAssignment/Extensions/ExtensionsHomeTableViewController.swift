//
//  ExtensionsHomeTableViewController.swift
//  thirdAssignment
//
//  Created by Gino Salvador Quispe Calixto on 3/12/22.
//

import Foundation

import UIKit

extension HomeTableViewController {
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nav = segue.destination as? UINavigationController
        let destination = nav?.viewControllers.first as? AddTaskTableViewController
        destination?.delegate = self
        print("abriste agregar tarea modal")
    }
}

extension HomeTableViewController: AddTaskTableViewControllerDelegate{
    func addTaskTableViewController(_ tableViewController: UITableViewController, didCreateTask newTask: Task) {
        taskArray.append(newTask)
        taskTableView.reloadData()
        
    }
}

extension HomeTableViewController: TaskInfoViewControllerDelegate {
    func taskInfoViewController(_ viewController: UIViewController, indexUpdated index: Int, didUpdateTask updateTask: Task) {
        print("holi")
    }
    
    func taskInfoViewController(_ viewController: UIViewController, didRemoveTask index: Int) {
        taskArray.remove(at: index)
        taskTableView.reloadData()
    }
}
