//
//  MyDevicesTableUIView.swift
//  uikit.practice.autolayout
//
//  Created by Gino Salvador Quispe Calixto on 1/10/23.
//

import Foundation
import UIKit

final class MyDeviceTableUIView: UIView {
    
    private let myDevices = [
        Device(name: "SmarthPhone", image: "laptopcomputer", brand: "Apple"),
        Device(name: "Laptop", image: "laptopcomputer", brand: "Apple"),
        Device(name: "SmartTV", image: "laptopcomputer", brand: "Samsung"),
        Device(name: "SmartWatch", image: "laptopcomputer", brand: "Apple")
    ]
    
    private let myDevicesTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpTableView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpTableView() {
        myDevicesTableView.dataSource = self
        //myDevicesTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        myDevicesTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        myDevicesTableView.backgroundColor = .systemGray
        addSubview(myDevicesTableView)
        NSLayoutConstraint.activate([
            myDevicesTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            myDevicesTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            myDevicesTableView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            myDevicesTableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
}

extension MyDeviceTableUIView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myDevices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        let device = myDevices[indexPath.row]
//        var listContentConfiguration = UIListContentConfiguration.cell()
//        listContentConfiguration.text = device.name
//        listContentConfiguration.secondaryText = device.brand
//        listContentConfiguration.image = UIImage(systemName: device.image)
//        cell.contentConfiguration = listContentConfiguration
        cell.configure(for: device)
        return cell
    }
    
}
