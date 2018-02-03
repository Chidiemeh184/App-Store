//
//  UpdateTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/19/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class UpdateTableViewCell: UITableViewCell {

    
    @IBOutlet weak var appImageView: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var releaseLabel: UILabel!
    
    
    var app : App? {
        didSet {
            //print("App was set")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setUp(app : App){
        self.app = app
        guard let imageURLString = app.artworkUrl100 else {return}
        
        appImageView.downloadImage(string: imageURLString)
        
        
       
        appNameLabel.text = app.trackName!
        releaseLabel.text = app.releaseNotes!
        
    }

}
