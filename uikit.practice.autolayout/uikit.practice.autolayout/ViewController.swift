//
//  ViewController.swift
//  uikit.practice.autolayout
//
//  Created by Gino Salvador Quispe Calixto on 1/10/23.
//

import UIKit

class ViewController: UIViewController {
    
//    MARK: This instance is for onboarding view, when I was practice layouts
//    override func loadView() {
//        self.view = OnboardingView()
//    }
    
//    MARK: This view is for buttons type with their styles
//    override func loadView() {
//        self.view = ButtonTypesView()
//    }
    
//    MARK: This view is for labels and image view for practcie styles ands constraints
//    override func loadView() {
//        self.view = LabelPracticeView()
//    }
    
//    MARK: In this view u can show a table view makin in code no in storyboards
//    override func loadView() {
//        self.view = MyDeviceTableUIView()
//    }
    
    override func loadView() {
        self.view = StackViewPracticeUIView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
