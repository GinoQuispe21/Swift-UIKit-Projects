//
//  OnboardingView.swift
//  uikit.practice.autolayout
//
//  Created by Gino Salvador Quispe Calixto on 1/10/23.
//

import Foundation
import UIKit

final class OnboardingView: UIView {
    
    private let onboardingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "rickandmorty")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Welcome to my app brother, I hope you enjoy losing ur life"
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 26)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var skipOnboardingButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Press to follow"
        config.subtitle = "Onboarding"
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp(){
        addSubVIews()
        configureConstraints()
    }
    
    private func addSubVIews() {
        [onboardingImageView, textLabel, skipOnboardingButton].forEach(addSubview)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            onboardingImageView.bottomAnchor.constraint(equalTo: textLabel.topAnchor, constant: -30),
            onboardingImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            onboardingImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            textLabel.bottomAnchor.constraint(equalTo: skipOnboardingButton.topAnchor,constant: -30),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            skipOnboardingButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            skipOnboardingButton.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    @objc func showMessage(){
        print("ZZZZZZZZZ")
    }
    
}
