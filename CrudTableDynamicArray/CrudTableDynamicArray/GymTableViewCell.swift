//
//  GymTableViewCell.swift
//  CrudTableDynamicArray
//
//  Created by Gino Salvador Quispe Calixto on 30/11/22.
//

import UIKit

protocol GymTableViewCellDelegate : AnyObject{
    func removeGym(cell: GymTableViewCell, index: Int)
}

class GymTableViewCell: UITableViewCell {

    @IBOutlet weak var nameGymLabel: UILabel!
    
    @IBOutlet weak var districtGymLabel: UILabel!
    
    weak var delegate : GymTableViewCellDelegate?
    var indexCell : Int = 0
    
    @IBAction func deleteGym(_ sender: UIButton) {
        print("Delete gym")
        delegate?.removeGym(cell: self, index: indexCell)
    }
    
    
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
