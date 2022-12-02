//
//  TaskInfoViewController.swift
//  thirdAssignment
//
//  Created by Gino Salvador Quispe Calixto on 2/12/22.
//

import UIKit

protocol TaskInfoViewControllerDelegate : AnyObject{
    func taskInfoViewController(_ viewController: UIViewController, didRemoveTask index: Int)
}

class TaskInfoViewController: UIViewController {
    
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

}
