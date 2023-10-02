//
//  LabelsPracticeView.swift
//  uikit.practice.autolayout
//
//  Created by Gino Salvador Quispe Calixto on 1/10/23.
//

import Foundation
import UIKit

final class LabelPracticeView: UIView {
    
    private let image1: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "gamecontroller.fill")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .purple
        imageView.layer.cornerRadius = 100
        imageView.layer.borderWidth = 10
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.backgroundColor = UIColor.cyan.cgColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let labelTitle: UILabel = {
        let label = UILabel()
        label.text = "This is the title of the view"
        label.font = UIFont(name: "Ariabl Rounded", size: 30)
        label.textAlignment = .center
        label.textColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let subTitle: UILabel = {
        let label = UILabel()
        label.text = "Im a subtitle for these incredible view. I dont knwo what tell u more, ure login a simple view"
        label.font = .systemFont(ofSize: 25)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.textColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let paragrhapLabel: UILabel = {
        let text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
        let attributedText: [NSAttributedString.Key: Any] = [
            .underlineStyle: NSUnderlineStyle.single.rawValue,
            .underlineColor: UIColor.red,
            .foregroundColor: UIColor.white,
            .backgroundColor: UIColor.blue,
            .font: UIFont.systemFont(ofSize: 23)
        ]
        let atributedString = NSAttributedString(string: text, attributes: attributedText)
        let label = UILabel()
        label.attributedText = atributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        setUpLabels()
        addContraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpLabels() {
        addSubview(image1)
        addSubview(labelTitle)
        addSubview(subTitle)
        addSubview(paragrhapLabel)
    }
    
    private func addContraints() {
        NSLayoutConstraint.activate([
            image1.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            image1.centerXAnchor.constraint(equalTo: centerXAnchor),
            image1.widthAnchor.constraint(equalToConstant: 200),
            image1.heightAnchor.constraint(equalToConstant: 200),
            
            labelTitle.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 20),
            labelTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            subTitle.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 20),
            subTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            subTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20), //izquierda
            subTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20), //dercha
            
            paragrhapLabel.topAnchor.constraint(equalTo: subTitle.bottomAnchor),
            paragrhapLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            paragrhapLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            paragrhapLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
        ])
    }
    
}
