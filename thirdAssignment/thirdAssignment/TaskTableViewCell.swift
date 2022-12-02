//
//  TaskTableViewCell.swift
//  thirdAssignment
//
//  Created by Gino Salvador Quispe Calixto on 2/12/22.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var descTaskLabel: UILabel!
    @IBOutlet weak var nameTaskLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupLabels(name: String, desc: String){
        nameTaskLabel.text = name
        descTaskLabel.text = desc
    }
    
}
