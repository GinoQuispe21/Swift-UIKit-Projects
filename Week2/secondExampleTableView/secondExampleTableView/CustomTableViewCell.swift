//
//  CustomTableViewCell.swift
//  secondExampleTableView
//
//  Created by Gino Salvador Quispe Calixto on 30/11/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var nameLabel: UILabel!
    
    func setup (name: String){
        nameLabel.text = name
    }
    
}
