//
//  AddGymViewController.swift
//  CrudTableDynamicArray
//
//  Created by Gino Salvador Quispe Calixto on 1/12/22.
//

import UIKit

protocol AddGymViewControllerDelegate {
    func addGym(gym: Gym)
}

class AddGymViewController: UIViewController {

    @IBOutlet weak var nameGymTextField: UITextField!
    @IBOutlet weak var descriptionGymTextField: UITextField!
    @IBOutlet weak var districtGymTextField: UITextField!
    @IBOutlet weak var rateGymTextField: UITextField!
    
    var delegate : AddGymViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveGymTapped(_ sender: Any) {
        let name = nameGymTextField.text ?? ""
        let desc = descriptionGymTextField.text ?? ""
        let dist = districtGymTextField.text ?? ""
        let rate = rateGymTextField.text ?? ""
        let gym = Gym(name: name, description: desc, district: dist, reputaion: rate)
        delegate?.addGym(gym: gym)
        dismiss(animated: true)
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
