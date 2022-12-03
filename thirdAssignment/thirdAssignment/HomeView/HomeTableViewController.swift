//
//  HomeTableViewController.swift
//  thirdAssignment
//
//  Created by Gino Salvador Quispe Calixto on 2/12/22.
//

import UIKit

class HomeTableViewController: UITableViewController {

    var taskArray : [Task] = [
        Task(name: "Tarea de Ingles", desc: "Avanzar con el proyecto final, sobre una cultura peruana antiguar. Especificar localidad, historia y en que destacaban.", priority: "Media", date: "21/04/2023"),
        Task(name: "Reto 3 Bootcamp", desc: "Avanzar con el proyecto final, sobre una cultura peruana antiguar. Especificar localidad, historia y en que destacaban.", priority: "Alta", date: "03/12/2022"),
    ]
    
    @IBOutlet var taskTableView: UITableView!
    @IBAction func AddTaskBarButtonItem(_ sender: UIBarButtonItem) {
        print("add task modal")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return taskArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as? TaskTableViewCell else {
            return UITableViewCell()
        }
        let name = taskArray[indexPath.row].name
        let desc = taskArray[indexPath.row].desc
        cell.setupLabels(name: name, desc: desc)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let task = taskArray[indexPath.row]
        guard let taskInfoViewController = storyboard?.instantiateViewController(withIdentifier: "taskInfoViewController") as? TaskInfoViewController else { return }
        taskInfoViewController.name = task.name
        taskInfoViewController.desc = task.desc
        taskInfoViewController.prio = task.priority
        taskInfoViewController.date = task.date
        
        let nav = UINavigationController(rootViewController: taskInfoViewController)
        let destination = nav.viewControllers.first as? TaskInfoViewController
        destination?.indexCell = indexPath.row
        destination?.delegate = self
        present(nav, animated: true)
    }
}

