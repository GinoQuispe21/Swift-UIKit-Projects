//
//  ViewController.swift
//  secondExampleTableView
//
//  Created by Gino Salvador Quispe Calixto on 30/11/22.
//

import UIKit

class HomeViewController: UIViewController {

    var people = [
        Person(name: "Messi"),
        Person(name: "Ronaldo"),
        Person(name: "Pedro"),
        Person(name: "Guerrero")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addPerson(_ sender: UIButton) {
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.delegate = self
        secondViewController.modalPresentationStyle = .fullScreen
        present(secondViewController, animated: true)
    }
}

extension HomeViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        let person = people[indexPath.row].name
        cell.setup(name: person)
        return cell	
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("DidSelectRow")
    }
    
}

// Extenssion to implement protocol
extension HomeViewController : SecondViewControllerDelegate {
    func addPerson(person: Person) {
        people.append(person)
        tableView.reloadData()
    }
}

