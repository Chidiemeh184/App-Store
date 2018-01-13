//
//  SytleThreeTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/11/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class SytleThreeTableViewCell: UITableViewCell {

    //UI Properties
    @IBOutlet weak var appView: ShadowView!
    @IBOutlet weak var appImageView: UIImageView!
    @IBOutlet weak var getButton: UIButton!
    @IBOutlet weak var appIconImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureAppView()
    }
    
    
    func configureAppView(){
        appImageView.clipsToBounds = true
        appImageView.layer.cornerRadius = 15
        appView.setUpShadow()
        getButton.layer.cornerRadius = getButton.layer.frame.height / 2
        appIconImageView.layer.cornerRadius = 15
    }

}
