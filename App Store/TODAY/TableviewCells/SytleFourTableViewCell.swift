//
//  SytleFourTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/11/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class SytleFourTableViewCell: UITableViewCell {

    //UI Properties
    @IBOutlet weak var appView: ShadowView!
    @IBOutlet weak var appImageView: UIImageView!
    @IBOutlet weak var bottomDetailView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureAppView()
    }
    
    
    func configureAppView(){
        appImageView.clipsToBounds = true
        appImageView.layer.cornerRadius = 15
        appView.setUpShadow()
        bottomDetailView.roundBottomCorners([.bottomLeft, .bottomRight], radius: 15)
    }

}
