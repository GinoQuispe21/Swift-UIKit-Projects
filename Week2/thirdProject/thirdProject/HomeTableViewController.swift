//
//  HomeTableViewController.swift
//  thirdProject
//
//  Created by Gino Salvador Quispe Calixto on 1/12/22.
//

import UIKit

class HomeTableViewController: UITableViewController {

    var people : [Person] = []
    
    @IBAction func addButtonItem(_ sender: Any) {
    }
    
    @IBOutlet var peopleTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return people.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        let row = indexPath.row
        let name = people[indexPath.row].name
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = name
        return cell
    }

}

// 3. Conect with segue and initialize delegate
// case of visual component to scene
extension HomeTableViewController {
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nav = segue.destination as? UINavigationController
        let destination = nav?.viewControllers.first as? ModalTableViewController
        destination?.delegate = self
    }
}

// 1. Implementation delegate pattern in side of client
extension HomeTableViewController : ModalTableViewControllerDelegate {
//  2. Implementation methods of delegate
    func modalTableViewController(_ viewController: ModalTableViewController, didCreatePerson newPerson: Person) {
        people.append(newPerson)
        peopleTableView.reloadData()
    }
}
