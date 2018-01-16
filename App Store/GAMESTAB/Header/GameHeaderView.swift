//
//  GameHeaderView.swift
//  App Store
//
//  Created by Chidi Emeh on 1/16/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit


class GameHeaderView : UIView {
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func awakeFromNib() {
        profileImageView.layer.cornerRadius = profileImageView.layer.frame.height/2
    }
    
}
