//
//  WhatsNewTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/24/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class WhatsNewTableViewCell: UITableViewCell {
    
    //Class Properties
    
    @IBOutlet weak var versionLabel: UILabel!
    @IBOutlet weak var releaseNotesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setUp(app : App){
        
        versionLabel.text = "Version \(app.version!)"
        releaseNotesLabel.text = app.releaseNotes!
        
    }

}
