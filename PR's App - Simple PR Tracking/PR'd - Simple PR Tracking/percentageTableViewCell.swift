//
//  percentageTableViewCell.swift
//  PR'd - Simple PR Tracking
//
//  Created by Nate on 6/8/16.
//  Copyright © 2016 Nate. All rights reserved.
//

import UIKit

class percentageTableViewCell: UITableViewCell {

    @IBOutlet weak var percentageTxtLabel: UILabel!
    @IBOutlet weak var weightTxtLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
