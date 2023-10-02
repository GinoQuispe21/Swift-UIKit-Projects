//
//  File.swift
//  uikit.practice.autolayout
//
//  Created by Gino Salvador Quispe Calixto on 1/10/23.
//

import Foundation
import UIKit

final class ButtonTypesView: UIView {
    
    private let swiftButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "First Button"
        configuration.subtitle = "This is subtitlte"
        configuration.image = UIImage(systemName: "play.circle.fill")
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let swiftButton2: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "First Button"
        configuration.titleAlignment = .center
        configuration.subtitle = "This is subtitlte"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 15
        configuration.imagePlacement = .trailing
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let swiftButton3: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Suscribete a swiftBeta"
        configuration.titleAlignment = .center
        configuration.subtitle = "This is subtitlte"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 15
        configuration.imagePlacement = .top
        configuration.buttonSize = .large
        configuration.baseBackgroundColor = .systemPurple
        configuration.baseForegroundColor = .white
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var swiftButton4: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "This is the fourth button"
        configuration.titleAlignment = .center
        configuration.subtitle = "This button has an action"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 15
        configuration.imagePlacement = .top
        configuration.buttonSize = .large
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.showMessage()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
        addContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButtons() {
        [swiftButton, swiftButton2, swiftButton3, swiftButton3, swiftButton4].forEach(addSubview)
    }
    
    private func addContraints(){
        NSLayoutConstraint.activate([
            swiftButton.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            swiftButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            swiftButton2.topAnchor.constraint(equalTo: swiftButton.bottomAnchor, constant: 30),
            swiftButton2.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            swiftButton3.topAnchor.constraint(equalTo: swiftButton2.bottomAnchor, constant: 30),
            swiftButton3.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            swiftButton4.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor, constant: -50),
            swiftButton4.leftAnchor.constraint(equalTo: leftAnchor, constant: 20)
        ])
    }
    
    private func showMessage(){
        print("calla mamamhuevo")
    }
    
}
