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
    @IBOutlet weak var appView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureAppView()
        //setUPAppView()
    }
    
    
    func configureAppView(){
        //TODO: Make bottom line go away!
        appView.layer.borderColor = UIColor.clear.cgColor
        appView.layer.shadowColor =  UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1).cgColor  //204
        appView.layer.shadowOffset = CGSize(width: 0, height: 0)
        appView.layer.shadowRadius = 55  //85
        appView.layer.shadowOpacity = 1.0
        appView.layer.masksToBounds = false
        appView.layer.cornerRadius = 15
        appView.layer.borderWidth = 0.5
        
        appView.layer.shadowPath = UIBezierPath(rect: appView.bounds).cgPath
        //appView.layer.shadowPath = UIBezierPath(roundedRect: self.appView.bounds, cornerRadius: appView.layer.cornerRadius).cgPath
        
        appView.layer.shouldRasterize = true
        
        appView.layer.rasterizationScale = UIScreen.main.scale
        
    }

}
