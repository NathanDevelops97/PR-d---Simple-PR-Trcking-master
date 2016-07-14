//
//  prPercentTableViewCell.swift
//  PR'd - Simple PR Tracking
//
//  Created by Nate on 5/31/16.
//  Copyright © 2016 Nate. All rights reserved.
//

import UIKit

class prPercentTableViewCell: UITableViewCell {

    @IBOutlet weak var prName: UILabel!
    @IBOutlet weak var prNotes: UILabel!
    @IBOutlet weak var prWeight: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
  
    }

    

    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
