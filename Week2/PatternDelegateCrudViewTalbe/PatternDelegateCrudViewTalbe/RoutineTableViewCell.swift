//
//  RoutineTableViewCell.swift
//  PatternDelegateCrudViewTalbe
//
//  Created by Gino Salvador Quispe Calixto on 2/12/22.
//

import UIKit

class RoutineTableViewCell: UITableViewCell {

    @IBOutlet weak var nameRoutineLabel: UILabel!
    
    @IBOutlet weak var muscleRoutineLabel: UILabel!
    
    
    @IBAction func updateRoutineButton(_ sender: UIButton) {
    }
    
    @IBAction func deleteRoutineButton(_ sender: UIButton) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupLabels(name: String, muscle: String) {
        nameRoutineLabel.text = name
        muscleRoutineLabel.text = muscle
    }

}
