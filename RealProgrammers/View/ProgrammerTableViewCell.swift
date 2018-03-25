//
//  ProgrammerTableViewCell.swift
//  RealProgrammers
//
//  Created by James Yorke on 22/03/2018.
//  Copyright © 2018 james. All rights reserved.
//

import UIKit

class ProgrammerTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var favouriteLabel: UILabel!
    
}

extension ProgrammerTableViewCell: ProgrammerCellView {
    func display(name: String) {
        nameLabel.text = name
    }
    
    func display(date: String) {
        dateLabel.text = date
    }
    
    func display(favourite: Bool) {
        favouriteLabel.isHidden = !favourite
    }
    
}

