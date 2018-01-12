//
//  SytleTwoTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/11/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class SytleTwoTableViewCell: UITableViewCell {

    @IBOutlet weak var appImageView: UIImageView!
    @IBOutlet weak var containerView: ShadowView!
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        visualEffectView.roundCorners([.topLeft, .topRight], radius: 15)
        setUpCustomize()
    }
    
    
    func setUpCustomize(){
        appImageView.clipsToBounds = true
        appImageView.layer.cornerRadius = 15
        containerView.setUpShadow()
    }

}






