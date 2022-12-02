//
//  ViewController.swift
//  secondProject
//
//  Created by Gino Salvador Quispe Calixto on 28/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func learningUINavigationController() {
        // Add UIViewController to the stack
        //
        let viewControllerDestino: UIViewController = UIViewController()
        navigationController?.pushViewController(viewControllerDestino, animated: true)
		// Pop from the stack
        navigationController?.popViewController(animated: true)
        navigationController?.popToRootViewController(animated: true)
        navigationController?.popToViewController(viewControllerDestino, animated: true)
    }


}

