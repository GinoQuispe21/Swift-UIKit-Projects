//
//  GymInfoViewController.swift
//  CrudTableDynamicArray
//
//  Created by Gino Salvador Quispe Calixto on 30/11/22.
//

import UIKit

class GymInfoViewController: UIViewController {

    @IBOutlet weak var nameGymLabel: UILabel!
    @IBOutlet weak var descGymLabel: UILabel!
    @IBOutlet weak var rateGymLabel: UILabel!
    @IBOutlet weak var ditrictGymLabel: UILabel!
    
    var name : String?
    var descrip : String?
    var rate : String?
    var district : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameGymLabel.text = name
        descGymLabel.text = descrip
        rateGymLabel.text = rate
        ditrictGymLabel.text = district
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
