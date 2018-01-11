//
//  TodayTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/11/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class TodayTableViewCell: UITableViewCell {

    //UI Properties
    @IBOutlet weak var appView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureAppView()
    }

    
    func configureAppView(){
        
        appView.layer.borderColor = UIColor.clear.cgColor
        appView.layer.shadowColor =  UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1).cgColor
        appView.layer.shadowOffset = CGSize(width: 0, height: 4)  //Default 0, 5
        appView.layer.shadowRadius = 25  //Default 5
        appView.layer.shadowOpacity = 1.0
        appView.layer.masksToBounds = false
        appView.layer.cornerRadius = 15   //Default 8
        appView.layer.borderWidth = 0.5

        //appView.layer.shadowPath = UIBezierPath(roundedRect:self.bounds, cornerRadius:self.contentView.layer.cornerRadius).cgPath
    }
    

}
