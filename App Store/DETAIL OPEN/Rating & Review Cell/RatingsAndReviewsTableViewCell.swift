//
//  RatingsAndReviewsTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/26/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class RatingsAndReviewsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var averageUserRatingLabel: UILabel!
    @IBOutlet weak var userRatingCountLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setUp(averageUserRating : Float, userRatingCount : Int){
        
        averageUserRatingLabel.text = "\(averageUserRating)"
        userRatingCountLabel.text = "\(userRatingCount) Ratings"
    }
    
}
