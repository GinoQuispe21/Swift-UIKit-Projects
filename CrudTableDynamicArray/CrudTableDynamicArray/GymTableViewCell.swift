//
//  GymTableViewCell.swift
//  CrudTableDynamicArray
//
//  Created by Gino Salvador Quispe Calixto on 30/11/22.
//

import UIKit

class GymTableViewCell: UITableViewCell {

    @IBOutlet weak var nameGymLabel: UILabel!
    
    @IBOutlet weak var districtGymLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupLabels(name: String, district: String) {
        nameGymLabel.text = name
        districtGymLabel.text = district
    }

}
