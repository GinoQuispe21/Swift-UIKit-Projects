//
//  HomeTableViewController.swift
//  thirdAssignment
//
//  Created by Gino Salvador Quispe Calixto on 2/12/22.
//

import UIKit

class HomeTableViewController: UITableViewController {

    var taskArray : [Task] = []
    
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
        present(taskInfoViewController, animated: true)
    }

}

extension HomeTableViewController {
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nav = segue.destination as? UINavigationController
        let destination = nav?.viewControllers.first as? AddTaskTableViewController
        destination?.delegate = self
    }
    
    
}

extension HomeTableViewController: AddTaskTableViewControllerDelegate{
    func addTaskTableViewController(_ tableViewController: UITableViewController, didCreateTask newTask: Task) {
        taskArray.append(newTask)
        taskTableView.reloadData()
        
    }
}
