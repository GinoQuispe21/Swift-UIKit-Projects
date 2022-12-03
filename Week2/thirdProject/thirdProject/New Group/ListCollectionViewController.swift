//
//  ListCollectionViewController.swift
//  thirdProject
//
//  Created by Gino Salvador Quispe Calixto on 3/12/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class ListCollectionViewController: UICollectionViewController {

    var arrayFruits = ["Piña", "Manzana", "Pera", "Mango", "Sandia", "papaya"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return arrayFruits.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellCollectionView", for: indexPath)
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCollectionViewCell", for: indexPath) as? ItemCollectionViewCell else {return UICollectionViewCell()}
        let name = arrayFruits[indexPath.row]
        cell.setup(name: name)
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
        guard let detailViewController = storyboard?.instantiateViewController(withIdentifier: "detailInfoViewController") as? DetailViewController else { return }
//        let destination = UINavigationController(rootViewController: detailViewController   )
//        for model :
//        present(destination, animated: true)
        
//        let myStoryboard = UIStoryboard(name: "ST-02", bundle: nil)
//        let viewController = myStoryboard.instantiateViewController(withIdentifier: "detaillViewController")
        
        navigationController?.pushViewController(detailViewController, animated: true)
//        navigationController?.pushViewController(viewController, animated: true)
//        show(viewController, sender: nil)
    }
}
