//
//  EndModalViewController.swift
//  secondProject
//
//  Created by Gino Salvador Quispe Calixto on 28/11/22.
//

import UIKit

class EndModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButton(_ sender: Any) {
		// Back before the navigation controller that start the stack for modals, not for view controllers  
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
