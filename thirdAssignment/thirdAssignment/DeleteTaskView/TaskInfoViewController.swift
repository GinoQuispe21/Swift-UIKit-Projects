//
//  TaskInfoViewController.swift
//  thirdAssignment
//
//  Created by Gino Salvador Quispe Calixto on 2/12/22.
//

import UIKit

protocol TaskInfoViewControllerDelegate : AnyObject{
    func taskInfoViewController(_ viewController: UIViewController, didRemoveTask index: Int)
    func taskInfoViewController(_ viewController: UIViewController, indexUpdated index: Int, didUpdateTask updateTask: Task)
}

class TaskInfoViewController: UIViewController {
    
    var newTaskInfoViewController : Task?
    weak var delegate : TaskInfoViewControllerDelegate?
    
    @IBOutlet weak var nameTaskLabel: UILabel!
    @IBOutlet weak var descTaskLabel: UILabel!
    @IBOutlet weak var priorityTaskLabel: UILabel!
    @IBOutlet weak var dateTaskLabel: UILabel!
    
    @IBAction func closeInfoTaskBarButtonItemm(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    @IBAction func deleteBarButtonItem(_ sender: UIBarButtonItem) {
        print("Delete Gym!!")
        delegate?.taskInfoViewController(self, didRemoveTask: indexCell)
        dismiss(animated: true)
    }
    
    @IBAction func updateTaskButton(_ sender: UIButton) {
    }
    
    var indexCell: Int = 0
    var name: String?
    var desc: String?
    var prio: String?
    var date: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTaskLabel.text = name
        descTaskLabel.text = desc
        priorityTaskLabel.text = prio
        dateTaskLabel.text = date
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nav = segue.destination as? UINavigationController
        let destination = nav?.viewControllers.first as? EditTaskViewController
        destination?.delegate = self
        guard let na = name else {return}
        guard let de = desc else {return}
        guard let pr = prio else {return}
        guard let da = date else {return}
        destination?.task = Task(name: na, desc: de, priority: pr, date: da)
        print("abriste agregar edit modal")
    }
}

extension TaskInfoViewController: EditTaskViewControllerDelegate {
    func editTaskViewController(_ viewController: UIViewController, didUpdated newTask: Task) {
        newTaskInfoViewController = newTask
        print("\(String(describing: newTaskInfoViewController?.name))")
    }
}
