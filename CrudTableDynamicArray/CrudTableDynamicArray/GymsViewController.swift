//
//  ViewController.swift
//  CrudTableDynamicArray
//
//  Created by Gino Salvador Quispe Calixto on 30/11/22.
//

import UIKit

class GymsViewController: UIViewController {

    var gymsArray = [
        Gym(name: "Omody Gym", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ", district: "San Juan de Lurigancho", reputaion: "5"),
        Gym(name: "Smart Fit", description: "El mejor gimnasio de la zona", district: "Santa Anita", reputaion: "4.5"),
        Gym(name: "Bunker Gym", description: "El mejor gimnasio de la zona", district: "Surquillo", reputaion: "4"),
        Gym(name: "Upa Gym", description: "El mejor gimnasio de la zona", district: "Surquillo", reputaion: "4.5"),
        Gym(name: "Gimnasio G2", description: "El mejor gimnasio de la zona", district: "San Borja", reputaion: "5"),
        Gym(name: "Mega Force", description: "El mejor gimnasio de la zona", district: "San Juan de Lurigancho", reputaion: "3"),
        Gym(name: "Omody Gym", description: "El mejor gimnasio de la zona", district: "San Juan de Lurigancho", reputaion: "5"),
        Gym(name: "Smart Fit", description: "El mejor gimnasio de la zona", district: "Santa Anita", reputaion: "4.5"),
        Gym(name: "Bunker Gym", description: "El mejor gimnasio de la zona", district: "Surquillo", reputaion: "4"),
        Gym(name: "Upa Gym", description: "El mejor gimnasio de la zona", district: "Surquillo", reputaion: "4.5"),
        Gym(name: "Gimnasio G2", description: "El mejor gimnasio de la zona", district: "San Borja", reputaion: "5"),
        Gym(name: "Mega Force", description: "El mejor gimnasio de la zona", district: "San Juan de Lurigancho", reputaion: "3"),
        Gym(name: "Omody Gym", description: "El mejor gimnasio de la zona", district: "San Juan de Lurigancho", reputaion: "5"),
        Gym(name: "Smart Fit", description: "El mejor gimnasio de la zona", district: "Santa Anita", reputaion: "4.5"),
        Gym(name: "Bunker Gym", description: "El mejor gimnasio de la zona", district: "Surquillo", reputaion: "4"),
        Gym(name: "Upa Gym", description: "El mejor gimnasio de la zona", district: "Surquillo", reputaion: "4.5"),
        Gym(name: "Gimnasio G2", description: "El mejor gimnasio de la zona", district: "San Borja", reputaion: "5"),
        Gym(name: "Mega Force", description: "El mejor gimnasio de la zona", district: "San Juan de Lurigancho", reputaion: "3")
    ]
    
    @IBOutlet weak var gymsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gymsTableView.dataSource = self
        gymsTableView.delegate = self
        // Do any additional setup after loading the view.
    }

}

extension GymsViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gymsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GymTableViewCell", for: indexPath) as? GymTableViewCell else {
            return UITableViewCell()
        }
        let name = gymsArray[indexPath.row].name
        let district = gymsArray[indexPath.row].district
        cell.setupLabels(name: name, district: district)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let gym = gymsArray[indexPath.row]
        guard let gymInfoViewController = storyboard?.instantiateViewController(withIdentifier: "GymInfoViewController") as? GymInfoViewController else { return }
        // To Present full screen modal:
        // gymInfoViewController.modalPresentationStyle = .fullScreen
        gymInfoViewController.name = gym.name
        gymInfoViewController.district = gym.district
        gymInfoViewController.descrip = gym.description
        gymInfoViewController.rate = gym.reputaion
        present(gymInfoViewController, animated: true)
    }
}

