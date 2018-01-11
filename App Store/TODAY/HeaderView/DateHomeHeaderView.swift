//
//  DateHomeHeaderView.swift
//  App Store
//
//  Created by Chidi Emeh on 1/11/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class DateHomeHeaderView : UIView {
    
    //UI properties
    @IBOutlet weak var dateView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var grayView: UIView!
    
    
    override func awakeFromNib() {
        profileImageView.layer.cornerRadius = profileImageView.layer.frame.height/2
        //configureGrayView()
    }
    
    
    
    func configureGrayView(){
        //TODO: Make bottom line go away!
        grayView.layer.borderColor = UIColor.clear.cgColor
        grayView.layer.shadowColor =  UIColor(red: 159/255, green: 159/255, blue: 159/255, alpha: 1).cgColor  //204
        grayView.layer.shadowOffset = CGSize(width: 0, height: 0)
        grayView.layer.shadowRadius = 45
        grayView.layer.shadowOpacity = 1.0
        grayView.layer.masksToBounds = false
        //grayView.layer.cornerRadius = 15
        grayView.layer.borderWidth = 0.5
        
        grayView.layer.shadowPath = UIBezierPath(rect: grayView.bounds).cgPath
        //appView.layer.shadowPath = UIBezierPath(roundedRect: self.appView.bounds, cornerRadius: appView.layer.cornerRadius).cgPath
        
        grayView.layer.shouldRasterize = true
        
        grayView.layer.rasterizationScale = UIScreen.main.scale
        
    }
    
    
}
