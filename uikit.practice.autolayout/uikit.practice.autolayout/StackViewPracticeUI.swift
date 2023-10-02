//
//  StackViewPracticeUI.swift
//  uikit.practice.autolayout
//
//  Created by Gino Salvador Quispe Calixto on 1/10/23.
//

import Foundation
import UIKit

final class StackViewPracticeUIView: UIView {
    
//     var dataSource: [String] = [] {
//        didSet {
//            renderUI()
//        }
//    }
    
    private let myArray = ["Gino", "Salvador", "Quispe", "Calixto","Gino", "Salvador", "Quispe", "Calixto","Gino", "Salvador", "Quispe", "Calixto","Gino", "Salvador", "Quispe", "Calixto","Gino", "Salvador", "Quispe", "Calixto","Gino", "Salvador", "Quispe", "Calixto","Gino", "Salvador", "Quispe", "Calixto","Gino", "Salvador", "Quispe", "Calixto"]
    
    private lazy var scrollView: UIScrollView = {
        let scrollvView = UIScrollView()
        scrollvView.translatesAutoresizingMaskIntoConstraints = false
        return scrollvView
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        scrollView.addSubview(stackView)
        addSubview(scrollView)
        initContraints()
        renderUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
//        scrollView.addSubview(stackView)
//        addSubview(scrollView)
//        initContraints()
//        renderUI()
    }
    
    private func initContraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 20),
            scrollView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor, constant: -20),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor)
        ])
    }
    
    private func renderUI() {
        for (index, item) in myArray.enumerated() {
            stackView.addArrangedSubview(createTokenView(index: index, item: item))
        }
    }
 
    private func createTokenView(index: Int, item: String) -> UIView {
        let view = UIView()
        view.backgroundColor = [.blue, .red].first
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        let textLabel = UILabel()
        textLabel.text = item
        textLabel.textColor = .white
        textLabel.numberOfLines = 0
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textLabel)
        let removeButton = UIButton(type: .close)
        removeButton.tag = index
        removeButton.addTarget(self, action: #selector(removeButtonAction), for: .touchUpInside)
        removeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(removeButton)
        NSLayoutConstraint.activate([
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            textLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            removeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 5),
            removeButton.bottomAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: -5),
            removeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            removeButton.widthAnchor.constraint(equalToConstant: 10),
            removeButton.heightAnchor.constraint(equalToConstant: 10)
        ])
        return view
    }
    
    @objc func removeButtonAction(){
        
    }
}
