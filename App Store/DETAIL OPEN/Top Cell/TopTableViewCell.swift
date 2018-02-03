//
//  TopTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/24/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class TopTableViewCell: UITableViewCell {

    @IBOutlet weak var appImageView: UIImageView!
    @IBOutlet weak var trackCensoredNameLabel: UILabel!
    @IBOutlet weak var userRatingForCurrentVersionLabel: UILabel!
    @IBOutlet weak var sellerNameLabel: UILabel!
    @IBOutlet weak var contentAdvisoryRatingLabel: UILabel!
    @IBOutlet weak var userRatingCountLabel: UILabel!
    @IBOutlet weak var primaryGenreName: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setUp(app : App){
        
        guard let imageURLString = app.artworkUrl100 else {return}
        appImageView.downloadImage(string: imageURLString)
        trackCensoredNameLabel.text = app.trackCensoredName!
        primaryGenreName.text = app.primaryGenreName!
        userRatingForCurrentVersionLabel.text = "\(app.averageUserRating!)"
        sellerNameLabel.text = app.sellerName!
        contentAdvisoryRatingLabel.text = app.contentAdvisoryRating!
        userRatingCountLabel.text = "\(app.userRatingCount!) Rating"
        
     
        
    }
    

}
