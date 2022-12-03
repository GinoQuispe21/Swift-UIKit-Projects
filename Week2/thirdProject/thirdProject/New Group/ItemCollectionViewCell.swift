//
//  ItemCollectionViewCell.swift
//  thirdProject
//
//  Created by Gino Salvador Quispe Calixto on 3/12/22.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func setup(name: String){
        nameLabel.text = name
    }
    
    override func awakeFromNib() {
           super.awakeFromNib()
           // Initialization code
       }
}
