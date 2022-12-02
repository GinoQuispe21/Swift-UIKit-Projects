//
//  TaskInfoViewController.swift
//  thirdAssignment
//
//  Created by Gino Salvador Quispe Calixto on 2/12/22.
//

import UIKit

class TaskInfoViewController: UIViewController {

    @IBOutlet weak var nameTaskLabel: UILabel!
    @IBOutlet weak var descTaskLabel: UILabel!
    @IBOutlet weak var priorityTaskLabel: UILabel!
    @IBOutlet weak var dateTaskLabel: UILabel!
    
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
