//
//  PRPercentageTableViewCell.swift
//  PR'd - Simple PR Tracking
//
//  Created by Nate on 6/6/16.
//  Copyright © 2016 Nate. All rights reserved.
//

import UIKit

class PRPercentageTableViewCell: UITableViewCell {

    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var weightPercentageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
