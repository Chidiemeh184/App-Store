//
//  DescriptionTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/25/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class DescriptionTableViewCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setUp(description : String, artistName : String){
        descriptionLabel.text = description
        artistNameLabel.text = artistName
    }
    
    
}
