//
//  ItemCell.swift
//  homepwner
//
//  Created by Jay Ockers on 4/18/18.
//  Copyright © 2018 Jay Ockers. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell{
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var serialNumberLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if isEditing{
            serialNumberLabel.alpha = 0.0
        } else {
            serialNumberLabel.alpha = 1.0
        }
    }
}
